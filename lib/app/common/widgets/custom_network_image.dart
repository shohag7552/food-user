import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
class CustomNetworkImage extends StatelessWidget {
  final String image;
  final double height;
  final double width;
  const CustomNetworkImage({super.key, required this.image, this.height = 20, this.width = 20});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image, height: height, width: width, fit: BoxFit.cover,
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
