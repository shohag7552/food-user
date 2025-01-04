import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_user_app/app/utils/images.dart';
import 'package:food_user_app/app/utils/padding_size.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          autoPlayInterval: const Duration(seconds: 7),
        ),
        items: [Images.banner1, Images.banner2].map((i) {
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
    );
  }
}