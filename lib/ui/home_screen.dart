import 'package:flutter/material.dart';
import 'package:web_porto/ui/components/app.dart';
import 'package:web_porto/ui/components/education.dart';
import 'package:web_porto/ui/constant.dart';
import 'dart:html' as html;

import 'components/contact.dart';
import 'components/profile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorBg,
        appBar: AppBar(
          backgroundColor: colorAppBar,
          title: const SizedBox(
              width: 70,
              child: ClipRRect(
                child: Image(
                  image: AssetImage('res/images/splash_logo.png'),
                ),
              )),
          actions: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: TextButton.icon(
                  onPressed: () {
                    html.window.open('https://wa.me/6285212229257', "_blank");
                  },
                  icon: const Icon(Icons.email),
                  label: Text(
                    'HIRE ME',
                    style: titleText.copyWith(color: Colors.blue),
                  )),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const MyProfile(),
              const SizedBox(
                height: 50,
              ),
              SelectableText(
                'PROJECTS',
                style: headText,
              ),
              const SizedBox(
                height: 50,
              ),
              //Metrik App
              const AppSection(
                imageFirst: true,
                imagePath: 'res/images/metapp.png',
                platformName: 'ANDROID APP',
                appName: 'METRIK 2019',
                url: 'https://github.com/fauzanafism/metrik2019_flutter',
                description:
                    'An Android app for Meteorologi Interaktif 2019\nnational competition',
              ),
              const SizedBox(
                height: 50,
              ),
              //Teco
              const AppSection(
                  imageFirst: false,
                  imagePath: 'res/images/teco.png',
                  platformName: 'DESKTOP APP',
                  url: 'https://github.com/fauzanafism/TECOs',
                  appName: 'TECO',
                  description:
                      'A desktop app for estimating corn production \nbased on meteorological variable such as \ntemperature'),
              const SizedBox(height: 50),
              const AppSection(
                  appName: 'GENERAL: DIGITAL WATCHFACE',
                  platformName: 'WATCHFACE',
                  isPlayStore: true,
                  imageFirst: true,
                  url:
                      'https://play.google.com/store/apps/details?id=com.executivedesign.general',
                  description: 'Digital Watchface for WearOS smartwatches',
                  imagePath: 'res/images/watchface.png'),
              const SizedBox(
                height: 50,
              ),
              const AppSection(
                  imageFirst: true,
                  imagePath: 'res/images/metrik22.png',
                  platformName: 'WEBSITE',
                  appName: 'METRIK 2022',
                  description:
                      'A website built using Flutter Web for\nMeteorologi Interaktif 2022 national competition.',
                  url: 'https://metrik-gfm.web.app'),
              const SizedBox(height: 50),
              //Education
              const Education(),
              const SizedBox(height: 50),
              //Skill
              // const Skills(),
              // const SizedBox(height: 50),
              //Contact
              const Contact(),
              //Footer
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Situs ini dibangun menggunakan Flutter\n\nCopyright (c) 2021 Fauzan Nafis Muharam. All rights Reserved",
                  style: bodyText,
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ));
  }
}
