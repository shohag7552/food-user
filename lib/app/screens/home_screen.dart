import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_user_app/app/utils/font_size.dart';
import 'package:food_user_app/app/utils/images.dart';
import 'package:food_user_app/app/utils/padding_size.dart';
import 'package:food_user_app/app/utils/radius_size.dart';
import 'package:food_user_app/app/utils/style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> banner = [Images.banner1, Images.banner2];
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Home Page'),
      // ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [

            /// App Bar
            SliverAppBar(
              floating: true,
              elevation: 0,
              automaticallyImplyLeading: false,
              surfaceTintColor: Theme.of(context).colorScheme.surface,
              backgroundColor: Theme.of(context).colorScheme.surface,
              title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text('Find Your \nFavourite Food', style: fontStyleBold.copyWith(fontSize: FontSize.mediumLarge)),
              
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).disabledColor.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(PaddingSize.extraSmall),
                  child: Icon(Icons.notifications_outlined, size: 24),
                ),
              ]),
              actions: const [SizedBox()],
            ),

            SliverPersistentHeader(
              pinned: true,
              delegate: SliverDelegate(height: 60, child: Container(
                color: Theme.of(context).colorScheme.surface,
                padding: const EdgeInsets.only(top: PaddingSize.medium, left: PaddingSize.medium, right: PaddingSize.medium),
                child: Row(spacing: FontSize.medium, children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).disabledColor.withValues(alpha: 0.05),
                        borderRadius: BorderRadius.circular(RadiusSize.medium),
                        // boxShadow: [BoxShadow(color: Colors.grey.withValues(alpha: 0.1), spreadRadius: 1, blurRadius: 10, offset: const Offset(0, 1))],
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: PaddingSize.small, vertical: PaddingSize.small),
                      child: Row(children: [
                        Icon(Icons.search, size: 25),
                        const SizedBox(width: PaddingSize.small),
                                  
                        Text('Search for restaurants, dishes...', style: fontStyleNormal.copyWith(fontSize: FontSize.small)),
                      ]),
                    ),
                  ), 
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).disabledColor.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(PaddingSize.small),
                    child: Icon(Icons.tune_outlined, size: 28),
                  ),
                ]),
              )),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: PaddingSize.medium),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 150.0,
                    autoPlay: true,
                    viewportFraction: 0.95,
                    aspectRatio: 2.5,
                    enlargeFactor: 0.3,
                    enlargeCenterPage: true,
                    disableCenter: true,
                  ),
                  items: banner.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(i, fit: BoxFit.cover),
                          ),
                          // child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
            ),
        
            SliverToBoxAdapter(
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 50,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Item $index'),
                  );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class SliverDelegate extends SliverPersistentHeaderDelegate {
  Widget child;
  double height;

  SliverDelegate({required this.child, this.height = 50});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(SliverDelegate oldDelegate) {
    return oldDelegate.maxExtent != height || oldDelegate.minExtent != height || child != oldDelegate.child;
  }
}