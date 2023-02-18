import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter/material.dart';

import 'Character.dart';

class AppSwiper extends StatefulWidget {
  const AppSwiper({super.key,required this.number});

  final int number;

  @override
  State<AppSwiper> createState() => _AppSwiperState();
}

class _AppSwiperState extends State<AppSwiper> {
  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemCount:widget.number,
      itemWidth: MediaQuery.of(context).size.width - 2 * 64,
      layout: SwiperLayout.STACK,
      itemBuilder: (context, index) => CharacterCard(),
    );
  }
}