import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AnimatedDescriptionWidget extends StatelessWidget {
  final Duration mainPlayDuration;
  final Duration titleDelayDuration;
  const AnimatedDescriptionWidget({super.key, required this.mainPlayDuration, required this.titleDelayDuration});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Text.rich(
          textAlign: TextAlign.center,
          TextSpan(children: [
            TextSpan(
              text: 'Welcome to ',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: 'Food ',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            TextSpan(
              text: 'User',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ]),
        ),
      ),
    )
    .animate()
    .scaleY(
      begin: -0.2,
      end: 1,
      delay: titleDelayDuration,
      duration: mainPlayDuration,
      curve: Curves.easeInOutCubic,
    )
    .scaleXY(
      begin: 0,
      end: 1,
      delay: titleDelayDuration,
      duration: mainPlayDuration,
      curve: Curves.easeInOutCubic,
    )
    ;
  }
}