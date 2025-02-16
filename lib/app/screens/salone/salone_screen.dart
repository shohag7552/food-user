import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_user_app/app/common/local_data.dart/category_food.dart';
import 'package:food_user_app/app/common/widgets/custom_network_image.dart';
import 'package:food_user_app/app/utils/font_size.dart';
import 'package:food_user_app/app/utils/images.dart';
import 'package:food_user_app/app/utils/padding_size.dart';
import 'package:food_user_app/app/utils/radius_size.dart';
import 'package:food_user_app/app/utils/style.dart';

class SaloneScreen extends StatefulWidget {
  const SaloneScreen({super.key});

  @override
  State<SaloneScreen> createState() => _SaloneScreenState();
}

class _SaloneScreenState extends State<SaloneScreen> {
  int _selectedIndex = 0;

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
              pinned: false,
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

            SliverPersistentHeader(
              pinned: true,
              delegate: SliverDelegate(height: 70, child: Container(
                color: Theme.of(context).colorScheme.surface,
                padding: const EdgeInsets.only(top: PaddingSize.medium, left: PaddingSize.medium, right: PaddingSize.medium),
                child: ListView.builder(itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      margin: const EdgeInsets.only(right: PaddingSize.medium),
                      // padding: const EdgeInsets.all(1),
                      width: index == _selectedIndex ? 120 : 50,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        // shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(50),
                        // border: Border.all(color: Theme.of(context).disabledColor, width: 0.1),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: CustomNetworkImage(image: CategoryFood.categories[index].image, width: 50, height: 55, fit: BoxFit.cover),
                          ),

                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left: PaddingSize.small),
                              child: Text(CategoryFood.categories[index].name, style: fontStyleNormal.copyWith(fontSize: FontSize.medium, color: Theme.of(context).cardColor), overflow: TextOverflow.ellipsis, maxLines: 1),
                            ),
                          ),

                        ],
                      ),
                      // child: Text('Category $index', style: fontStyleNormal.copyWith(fontSize: FontSize.medium, color: Theme.of(context).disabledColor)),
                    ),
                  );
                }, itemCount: CategoryFood.categories.length, scrollDirection: Axis.horizontal),
              )),
            ),

            // SliverToBoxAdapter(
            //   child: ListView.builder(
            //     itemCount: CategoryFood.categories.length,
            //     shrinkWrap: true,
            //     itemBuilder: (context, index) {
            //     return MasonryGridView.builder(
            //         gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
            //           crossAxisCount: 2, // Number of columns
            //         ),
            //         itemCount: CategoryFood.categories[index].foodItems.length, // Number of items
            //         shrinkWrap: true,
            //         physics: NeverScrollableScrollPhysics(),
            //         itemBuilder: (context, index) {
            //           return Container(
            //             margin: EdgeInsets.all(8),
            //             height: index%2 == 0 ? 250 : 170,
            //             decoration: BoxDecoration(
            //               color: Colors.amber,
            //               // color: Colors.primaries[index % Colors.primaries.length],
            //               borderRadius: BorderRadius.circular(26),
            //             ),
            //             child: ClipRRect(
            //               borderRadius: BorderRadius.circular(26),
            //               child: CustomNetworkImage(image: CategoryFood.categories[index].foodItems[index].image, height: 100, width: double.infinity, fit: BoxFit.cover),
            //             ),
            //           );
            //         },
            //       );
            //   }),
            // ),

            SliverList(
              
              delegate: SliverChildBuilderDelegate(
                childCount: CategoryFood.categories.length,
                (BuildContext context, int index) {
                  // return ListTile(
                  //   title: Text(CategoryFood.categories[index].name),
                  // );

                  return MasonryGridView.builder(
                    gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns
                    ),
                    itemCount: CategoryFood.categories[index].foodItems.length, // Number of items
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, i) {
                      return Container(
                        margin: EdgeInsets.all(8),
                        height: i%2 == 0 ? 250 : 170,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          // color: Colors.primaries[index % Colors.primaries.length],
                          borderRadius: BorderRadius.circular(26),
                          border: Border.all(color: Theme.of(context).disabledColor, width: 0.4),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(26),
                          child: CustomNetworkImage(image: CategoryFood.categories[index].foodItems[i].image, height: 100, width: double.infinity, fit: BoxFit.cover),
                        ),
                      );
                    },
                  );

                  // return MasonryGridView.count(
                  //   crossAxisCount: 4,
                  //   mainAxisSpacing: 4,
                  //   crossAxisSpacing: 4,
                  //   itemBuilder: (context, index) {
                  //     return Container(
                  //       height: (index % 3 + 1) * 100.0,
                  //       color: Colors.blue,
                  //     );
                  //     // return Tile(
                  //     //   index: index,
                  //     //   extent: (index % 5 + 1) * 100,
                  //     // );
                  //   },
                  // );

                  // return StaggeredGrid.count(
                  //   crossAxisCount: 3,
                  //   mainAxisSpacing: 10,
                  //   crossAxisSpacing: 10,
                  //   children: CategoryFood.categories.map(
                  //     (category) {
                  //       int i = CategoryFood.categories.indexOf(category);
                  //       return Container(
                  //         height: i.isOdd ? 200 : 150,
                  //         decoration: BoxDecoration(
                  //           color: Theme.of(context).cardColor,
                  //           borderRadius: BorderRadius.circular(RadiusSize.medium),
                  //         ),
                  //         child: Column(
                  //           children: [
                  //             ClipRRect(
                  //               borderRadius: BorderRadius.circular(RadiusSize.medium),
                  //               child: CustomNetworkImage(image: category.image, height: 100, width: double.infinity, fit: BoxFit.cover),
                  //             ),

                  //             Padding(
                  //               padding: const EdgeInsets.all(PaddingSize.medium),
                  //               child: Text(category.name, style: fontStyleNormal.copyWith(fontSize: FontSize.medium, color: Theme.of(context).cardColor)),
                  //             ),
                  //           ],
                  //         ),
                  //       );
                  //     },
                  //   ).toList(),
                    
                    // children: [
                    //   StaggeredGridTile.count(
                    //     crossAxisCellCount: 2,
                    //     mainAxisCellCount: 3,
                    //     child: Container(color: Colors.amber,),
                    //   ),
                    //   StaggeredGridTile.count(
                    //     crossAxisCellCount: 2,
                    //     mainAxisCellCount: 2,
                    //     child: Container(color: Colors.green,),
                    //   ),
                    //   StaggeredGridTile.count(
                    //     crossAxisCellCount: 1,
                    //     mainAxisCellCount: 1,
                    //     child: Container(color: Colors.blue,),
                    //   ),
                    //   StaggeredGridTile.count(
                    //     crossAxisCellCount: 1,
                    //     mainAxisCellCount: 1,
                    //     child: Container(color: Colors.grey,),
                    //   ),
                    //   StaggeredGridTile.count(
                    //     crossAxisCellCount: 4,
                    //     mainAxisCellCount: 2,
                    //     child: Container(color: Colors.deepOrange,),
                    //   ),
                    // ],
                  // );
                },
              
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