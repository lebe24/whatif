import 'package:flutter/material.dart';
import 'package:whatif/Widget/BackgroundImage.dart';
import 'package:whatif/Widget/Logo.dart';
import 'package:whatif/Widget/Watcher.dart';
import 'package:whatif/Widget/swiper.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackImg(
      child: Stack(
        children: [Logo(), Watcher(), AppSwiper(number: 3)],
      ),
    ));
  }
}
