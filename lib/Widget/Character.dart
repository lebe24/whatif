import 'package:flutter/material.dart';
import 'package:whatif/Screens/Detail.dart';
import 'package:whatif/core/config/style/app_color.dart';
import 'package:whatif/core/config/style/app_text.dart';
import 'package:whatif/core/data/charater.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(PageRouteBuilder(
        transitionDuration: Duration(seconds: 1),
        reverseTransitionDuration: Duration(seconds: 2),
        pageBuilder: (context, animation, secondaryAnimation) {
          return Detail(
            img: Character.marvelInfo[index]['image'],
            name: Character.marvelInfo[index]['name'],
          );
        },
      )),
      child: Stack(children: [
        Column(
          children: [
            const SizedBox(height: 100),
            Card(
              elevation: 8,
              color: AppColor.black,
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: AppColor.white),
                borderRadius: BorderRadius.circular(32),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 100),
                    Text(
                      Character.marvelInfo[index]['name'],
                      style: AppTextStyle.h2,
                      textAlign: TextAlign.left,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        Character.marvelInfo[0]['title'],
                        style: AppTextStyle.h3,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(width: 150, height: 80),
                  ],
                ),
              ),
            )
          ],
        ),
        Hero(
            tag: 'hero',
            child: Image.asset(
              Character.marvelInfo[index]['image'],
              height: 200,
            )),
        Positioned(
          left: 24,
          bottom: 100,
          child: Text(
            (index + 1).toString(),
            style: AppTextStyle.h1,
            textAlign: TextAlign.left,
          ),
        ),
      ]),
    );
  }
}
