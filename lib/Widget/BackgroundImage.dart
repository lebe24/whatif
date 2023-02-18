import 'package:flutter/material.dart';

class BackImg extends StatelessWidget {
  BackImg({super.key,this.child});

  Widget? child;

  @override
  Widget build(BuildContext context) {

     const String bg = 'assets/splash-bg.png';

    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration:const BoxDecoration(
        image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(bg))),
      child: child,
    );
  }
}