// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:web_porto/ui/constant.dart';

class ContactItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final String text1;

  const ContactItem({
    required this.iconPath,
    required this.title,
    required this.text1,
  });
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(iconPath, width: 25, height: 25,),
            const SizedBox(width: 15,),
            Text(title, style: titleText,)
          ],
        ),
        const SizedBox(height: 15,),
        SelectableText(text1, style: bodyText,)
      ],
    );
  }
}
