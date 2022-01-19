import 'package:flutter/material.dart';
import 'package:web_porto/ui/constant.dart';

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 400,
      // width: 1020,
      // color: Colors.red.withOpacity(0.1),
      child: Column(
        children: [
          SelectableText(
            'EDUCATION',
            style: headText,
          ),
          const SizedBox(
            height: 15,
          ),
          SelectableText(
            'A fresh graduate of Applied Meteorology with expertise in reading, analyzing, and processing data.',
            style: bodyText,
          ),
          const SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 30,
              ),
              SizedBox(height: 140, child: Image.asset('res/images/ipb.png')),
              const SizedBox(width: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    'IPB University',
                    style: titleText.copyWith(color: Colors.lightBlue),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SelectableText(
                    'Applied Meteorology',
                    style: titleText.copyWith(color: Colors.lightBlue),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SelectableText(
                    '2017 - 2021',
                    style: titleText.copyWith(color: Colors.lightBlue),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SelectableText(
                    'GPA: 3.24',
                    style: titleText.copyWith(color: Colors.lightBlue),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
