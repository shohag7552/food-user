import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:food_user_app/app/screens/splash/widgets/animated_description_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{

  AnimationController? _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mainPlayDuration = 1000.ms;
    final titleDelayDuration = mainPlayDuration + 50.ms;

    return Scaffold(
      body: Column(children: [

        SizedBox(height: 100),

        AnimatedDescriptionWidget(mainPlayDuration: mainPlayDuration, titleDelayDuration: titleDelayDuration),



      ]),
    );
  }
}