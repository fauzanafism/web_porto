import 'package:flutter/material.dart';
import 'dart:html' as html;
import '../constant.dart';


class CustomButton extends StatelessWidget {
  final String urlPath;
  final String text;
  const CustomButton({
    required this.text,
    required this.urlPath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: ElevatedButton(
        onPressed: () {
          html.window.open(
              urlPath,
              "_blank");
        },
        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            text,
            style: bodyText.copyWith(color: Colors.white),
          ),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: colorButton),
      ),
    );
  }
}