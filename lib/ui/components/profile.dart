import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_porto/ui/widgets/custom_button.dart';

import '../constant.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      height: 650,
      child: ResponsiveRowColumn(
        columnMainAxisAlignment: MainAxisAlignment.spaceAround,
        rowMainAxisAlignment: MainAxisAlignment.spaceAround,
        rowCrossAxisAlignment: CrossAxisAlignment.center,
        layout: ResponsiveWrapper.of(context).isSmallerThan('DESKTOP')
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        children: [
          ResponsiveRowColumnItem(
            columnOrder: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  'FLUTTER ENTHUSIAST',
                  style: titleText.copyWith(color: Colors.grey),
                ),
                const SizedBox(height: 8),
                SelectableText(
                  'FAUZAN NAFIS\nMUHARAM',
                  style: headText,
                ),
                const SizedBox(height: 15),
                // SelectableText(
                //   'GIS Operator at Forest Watch Indonesia, based in Bogor',
                //   style: bodyText.copyWith(color: Colors.white),
                // ),
                // const SizedBox(height: 15),
                const CustomButton(
                  urlPath:
                      'https://drive.google.com/file/d/14BqqzKLNtqiEkABCJY3QwXbKac5Fqpu0/view?usp=sharing',
                  text: 'Download CV',
                )
              ],
            ),
          ),
          ResponsiveRowColumnItem(
            columnOrder: 1,
            child: Stack(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: Colors.yellow),
                ),
                Positioned(
                  bottom: 1,
                  right: 1,
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Colors.blue),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(125),
                  child: const SizedBox(
                    height: 250,
                    width: 250,
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage('res/images/self2.png'),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
