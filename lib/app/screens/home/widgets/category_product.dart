import 'package:flutter/material.dart';

class TabBarScrollSync extends StatefulWidget {
  @override
  _TabBarScrollSyncState createState() => _TabBarScrollSyncState();
}

class _TabBarScrollSyncState extends State<TabBarScrollSync>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final ScrollController _scrollController = ScrollController();

  // Section offsets for scroll points
  final List<double> _scrollOffsets = [];

  // Example sections
  final List<String> sections = ["Section 1", "Section 2", "Section 3", "Section 4"];

  @override
  void initState() {
    super.initState();

    // Initialize TabController
    _tabController = TabController(length: sections.length, vsync: this);

    // Listen to TabBar changes and scroll to the corresponding section
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        _scrollToSection(_tabController.index);
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Calculate scroll offsets after layout build
      _calculateScrollOffsets();
    });

    // Listen to ScrollController to update TabBar index while scrolling
    _scrollController.addListener(() {
      _updateTabIndexOnScroll();
    });
  }

  // Calculate the vertical offsets for each section
  void _calculateScrollOffsets() {
    double currentOffset = 0.0;
    for (int i = 0; i < sections.length; i++) {
      _scrollOffsets.add(currentOffset);
      currentOffset += 200.0; // Example height for each section
    }
  }

  // Scroll to the corresponding section
  void _scrollToSection(int index) {
    if (index < _scrollOffsets.length) {
      _scrollController.animateTo(
        _scrollOffsets[index],
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  // Update TabBar index when scrolling
  void _updateTabIndexOnScroll() {
    for (int i = 0; i < _scrollOffsets.length - 1; i++) {
      if (_scrollController.offset >= _scrollOffsets[i] &&
          _scrollController.offset < _scrollOffsets[i + 1]) {
        _tabController.animateTo(i, duration: Duration(milliseconds: 100));
        break;
      }
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBar & Scroll Sync"),
        bottom: TabBar(
          controller: _tabController,
          tabs: sections.map((e) => Tab(text: e)).toList(),
        ),
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: sections.length,
        itemBuilder: (context, index) {
          return Container(
            height: 600.0, // Example section height
            color: Colors.primaries[index % Colors.primaries.length].withOpacity(0.3),
            alignment: Alignment.center,
            child: Text(
              sections[index],
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          );
        },
      ),
    );
  }
}