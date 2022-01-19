import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../constant.dart';

class AppRight extends StatelessWidget {
  final bool imageFirst;
  final String imagePath;
  final String platformName;
  final String appName;
  final String description;

  const AppRight({
    Key? key,
    required this.imageFirst,
    required this.imagePath,
    required this.platformName,
    required this.appName,
    required this.description
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ResponsiveValue(context,
          defaultValue: 650.0,
          valueWhen: const [
            Condition.smallerThan(name: 'DESKTOP2', value: 850)
          ]).value,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: ResponsiveRowColumn(
        rowMainAxisAlignment: MainAxisAlignment.center,
        layout:
            ResponsiveWrapper.of(context).isSmallerThan('DESKTOP2')
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
        children: [
          ResponsiveRowColumnItem(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const SizedBox(
                width: 599,
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage('res/images/metapp.png'),
                ),
              ),
            ),
          ),
          const ResponsiveRowColumnItem(
            child: SizedBox(
              width: 30,
              height: 30,
            ),
          ),
          ResponsiveRowColumnItem(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  'ANDROID APP',
                  style: titleText.copyWith(color: Colors.grey),
                ),
                const SizedBox(height: 15),
                SelectableText(
                  'METRIK 2019',
                  style: headText,
                ),
                const SizedBox(height: 15),
                SelectableText(
                  'An Android app for Meteorologi Interaktif 2019 competition',
                  style: bodyText.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ],
      ),
    );
  }
}