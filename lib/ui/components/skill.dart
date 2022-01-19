import 'package:flutter/material.dart';
import 'package:web_porto/ui/constant.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 400,
      child: Column(
        children: [
          SelectableText(
            'SKILLS',
            style: headText,
          ),
          const SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const FlutterLogo(
                size: 120,
              ),
              SizedBox(
                  height: 120,
                  width: 120,
                  child: Image.asset('res/images/js.png')),
              const SizedBox(
                  height: 120,
                  width: 120,
                  child: Image(image: AssetImage('res/images/py.png')))
            ],
          )
        ],
      ),
    );
  }
}
