import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_porto/ui/constant.dart';
import 'dart:html' as html;

import 'components/contact.dart';

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
              Container(
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
                            'FRESH GRADUATE',
                            style: titleText.copyWith(color: Colors.grey),
                          ),
                          const SizedBox(height: 15),
                          SelectableText(
                            'FAUZAN NAFIS\nMUHARAM',
                            style: headText,
                          ),
                          const SizedBox(height: 15),
                          SelectableText(
                            'Fresh graduate of IPB University, based in Bogor',
                            style: bodyText.copyWith(color: Colors.white),
                          ),
                          const SizedBox(height: 15),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: ElevatedButton(
                              onPressed: () {
                                html.window.open(
                                    'https://drive.google.com/file/d/1AMeumJCZz1OWFU5LoEo0U4eoEXVCWCrR/view?usp=sharing',
                                    "_blank");
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  'Download CV',
                                  style: bodyText.copyWith(color: Colors.white),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: colorButton),
                            ),
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
              ),
              const SizedBox(
                height: 50,
              ),
              //Metrik App
              Container(
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
              ),
              const SizedBox(
                height: 50,
              ),
              //Teco
              Container(
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
                      rowOrder: 3,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: const SizedBox(
                          width: 599,
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage('res/images/teco.png'),
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
                      rowOrder: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SelectableText(
                            'DESKTOP APP',
                            style: titleText.copyWith(color: Colors.grey),
                          ),
                          const SizedBox(height: 15),
                          SelectableText(
                            'TECO\nTEmperature Based\nCOrn Yield Prediction',
                            style: headText,
                          ),
                          const SizedBox(height: 15),
                          SelectableText(
                            'A desktop app for estimating corn production based\non meteorological variable such as temperature',
                            style: bodyText.copyWith(color: Colors.white),
                          ),
                          const SizedBox(height: 15),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //Education
              //Contact
              const Contact(),
              //Footer
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Copyright (c) 2021 Fauzan Nafis Muharam. All rights Reserved",
                  style: bodyText,
                ),
              )
            ],
          ),
        ));
  }
}
