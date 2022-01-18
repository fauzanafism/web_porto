import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_porto/models/contact_item.dart';


class Contact extends StatelessWidget {
  const Contact({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      padding: const EdgeInsets.only(bottom: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          ResponsiveVisibility(
            hiddenWhen: [Condition.smallerThan(name: TABLET)],
            child: ContactItem(
                iconPath: 'res/images/mappin.png',
                title: 'ADDRESS',
                text1: 'Ciomas, Bogor'),
          ),
          ContactItem(
              iconPath: 'res/images/phone.png',
              title: 'PHONE',
              text1: '+62 852-1222-9257'),
          ContactItem(
              iconPath: 'res/images/email.png',
              title: 'EMAIL',
              text1: 'fauzan137@gmail.com'),
        ],
      ),
    );
  }
}