import 'package:flutter/material.dart';
import 'package:food_user_app/app/common/local_data.dart/food.dart';
import 'package:food_user_app/app/common/widgets/custom_network_image.dart';
import 'package:food_user_app/app/utils/font_size.dart';
import 'package:food_user_app/app/utils/padding_size.dart';
import 'package:food_user_app/app/utils/style.dart';

class PopularFoodDesign extends StatefulWidget {
const PopularFoodDesign({super.key});

  @override
  State<PopularFoodDesign> createState() => _PopularFoodDesignState();
}

class _PopularFoodDesignState extends State<PopularFoodDesign> {

  CarouselController controller = CarouselController();

  @override
  void initState() {
    super.initState();

    // controller.animateTo(29, duration: Duration(milliseconds: 500), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: PaddingSize.medium),
            child: Text(
              'Popular food', style: fontStyleLarge,
            ),
          ),
      
          SizedBox(
            height: 150,
            child: CarouselView.weighted(
              flexWeights: [1, 9, 1], 
              controller: controller,
              children: popularFoods.map((data) {
                return CustomNetworkImage(image: data.imageUrl, );
              }).toList(),
            ),
          ),
      
          // SizedBox(
          //   height: 200,
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: popularFoods.length,
          //     padding: EdgeInsets.only(left: PaddingSize.small),
          //     itemBuilder: (context, index) {
          //       return Transform.translate(
          //         offset: Offset(0, index % 2 == 0 ? 20 : 0),
          //         child: Transform.rotate(
          //           angle: index % 3 == 0 ? 0.05 : 0,
          //           child: Container(
          //             width: 50, height: 50,
          //             decoration: BoxDecoration(
          //               color: Theme.of(context).cardColor,
          //               shape: BoxShape.circle,
          //               // borderRadius: BorderRadius.circular(10),
          //               boxShadow: [BoxShadow(color: Theme.of(context).disabledColor.withValues(alpha: 0.1), blurRadius: 5)],
          //             ),
          //             margin: const EdgeInsets.all(PaddingSize.small),
          //             child: ClipRRect(
          //               borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          //               child: CustomNetworkImage(image: popularFoods[index].imageUrl, height: 100, width: 150),
          //             ),
          //           ),
          //         ),
          //       );
          //     },
          //   ),
          // ),
        ],
      );
  }
}