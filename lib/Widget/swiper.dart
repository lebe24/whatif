import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter/material.dart';

import 'Character.dart';

class AppSwiper extends StatefulWidget {
  const AppSwiper({super.key, required this.number});

  final int number;

  @override
  State<AppSwiper> createState() => _AppSwiperState();
}

class _AppSwiperState extends State<AppSwiper> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 300.0, left: 50),
        child: Container(
          height: 500,
          padding: const EdgeInsets.only(left: 3),
          child: Swiper(
            itemCount: widget.number,
            itemWidth: MediaQuery.of(context).size.width - 2 * 64,
            layout: SwiperLayout.STACK,
            itemBuilder: (context, index) => CharacterCard(
              index: index,
            ),
          ),
        ),
      ),
    );
  }
}
