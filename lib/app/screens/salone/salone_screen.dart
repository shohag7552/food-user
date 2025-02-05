import 'package:flutter/material.dart';
import 'package:food_user_app/app/common/widgets/custom_network_image.dart';
import 'package:food_user_app/app/utils/font_size.dart';
import 'package:food_user_app/app/utils/images.dart';
import 'package:food_user_app/app/utils/padding_size.dart';
import 'package:food_user_app/app/utils/radius_size.dart';
import 'package:food_user_app/app/utils/style.dart';
class SaloneScreen extends StatelessWidget {
  const SaloneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // SliverAppBar(
            //   pinned: true,
            //   expandedHeight: 200.0,
            //   flexibleSpace: const FlexibleSpaceBar(
            //     title: Text('Salone', style: TextStyle(color: Colors.white)),
            //     background: Image(
            //       image: NetworkImage('https://images.unsplash.com/photo-1526318896980-cf78c088247c?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cmFtZW58ZW58MHx8MHx8fDA%3D'),
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),

            SliverPersistentHeader(
              pinned: true,
              delegate: SliverDelegate(height: 70, child: Container(
                color: Theme.of(context).colorScheme.surface,
                padding: const EdgeInsets.only(top: PaddingSize.medium, left: PaddingSize.medium, right: PaddingSize.medium),
                child: Row(spacing: FontSize.medium, children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Theme.of(context).disabledColor, width: 0.4),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: PaddingSize.medium, vertical: PaddingSize.medium),
                      child: Row(children: [
                        Image.asset(Images.searchIcon, width: 30, color: Theme.of(context).disabledColor),
                        const SizedBox(width: PaddingSize.small),
                                  
                        Text('Search', style: fontStyleNormal.copyWith(fontSize: FontSize.medium, color: Theme.of(context).disabledColor)),
                      ]),
                    ),
                  ), 
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50), 
                    child: CustomNetworkImage(image: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8fDA%3D', height: 50, width: 50, fit: BoxFit.cover,),
                  ),
                ]),
              )),
            ),

            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Item $index'),
                  );
                },
                childCount: 1000,
              ),
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