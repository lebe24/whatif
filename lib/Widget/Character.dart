import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatif/core/config/style/app_color.dart';
import 'package:whatif/core/config/style/app_text.dart';
import 'package:whatif/core/data/charater.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: null,
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
                      Character.MarvelInfo[index]['name'],
                      style: AppTextStyle.h2,
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      Character.MarvelInfo[index]['name'],
                      style: AppTextStyle.h2,
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(width: 250, height: 80),
                  ],
                ),
              ),
            )
          ],
        ),
        Hero(
            tag: index,
            child: Image.asset(
              Character.MarvelInfo[index]['image'],
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
