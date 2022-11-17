import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_porto/ui/widgets/custom_button.dart';
import 'dart:html' as html;

import '../constant.dart';

class AppSection extends StatelessWidget {
  final bool imageFirst;
  final String imagePath;
  final String platformName;
  final String appName;
  final String description;
  final String gitUrl;
  final bool isPlayStore;

  const AppSection(
      {Key? key,
      required this.imageFirst,
      required this.imagePath,
      required this.platformName,
      required this.appName,
      required this.description,
      required this.gitUrl,
      this.isPlayStore = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ResponsiveValue(context, defaultValue: 650.0, valueWhen: const [
        Condition.smallerThan(name: 'DESKTOP2', value: 810.0)
      ]).value,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: ResponsiveRowColumn(
        rowMainAxisAlignment: MainAxisAlignment.center,
        layout: ResponsiveWrapper.of(context).isSmallerThan('DESKTOP2')
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        children: [
          ResponsiveRowColumnItem(
            rowOrder: imageFirst ? 1 : 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                width: 599,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const ResponsiveRowColumnItem(
            rowOrder: 2,
            child: SizedBox(
              width: 30,
              height: 30,
            ),
          ),
          ResponsiveRowColumnItem(
            rowOrder: imageFirst ? 3 : 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  platformName,
                  style: titleText.copyWith(color: Colors.grey),
                ),
                const SizedBox(height: 15),
                SelectableText(
                  appName,
                  style: headText,
                ),
                const SizedBox(height: 15),
                SelectableText(
                  description,
                  style: bodyText.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 15),
                (isPlayStore)
                    ? MouseRegion(
                        child: GestureDetector(
                          child: Image.asset('res/images/playbadge.png'),
                          onTap: () {
                            html.window.open(gitUrl, "_blank");
                          },
                        ),
                      )
                    : CustomButton(text: 'EXPLORE MORE', urlPath: gitUrl)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
