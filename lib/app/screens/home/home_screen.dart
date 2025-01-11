import 'package:flutter/material.dart';
import 'package:food_user_app/app/screens/home/widgets/banner.dart';
import 'package:food_user_app/app/screens/home/widgets/popular_foods.dart';
import 'package:food_user_app/app/utils/font_size.dart';
import 'package:food_user_app/app/utils/padding_size.dart';
import 'package:food_user_app/app/utils/radius_size.dart';
import 'package:food_user_app/app/utils/style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                      color: Theme.of(context).disabledColor.withValues(alpha: 0.05),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(PaddingSize.small),
                    child: Icon(Icons.tune_outlined, size: 28),
                  ),
                ]),
              )),
            ),

            SliverToBoxAdapter(
              child: Column(spacing: PaddingSize.medium, children: [
                
                const SizedBox(height: PaddingSize.extraSmall),

                BannerWidget(),
                // const SizedBox(height: PaddingSize.medium),
                PopularFoods(),
                
              ]),
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