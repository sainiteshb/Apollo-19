import 'package:apollo19/constants/colors.dart';
import 'package:apollo19/pages/cancerTypes/actinic.dart';
import 'package:apollo19/pages/cancerTypes/atypical.dart';
import 'package:apollo19/pages/cancerTypes/dermato.dart';
import 'package:apollo19/pages/cancerTypes/mcc.dart';
import 'package:apollo19/pages/cancerTypes/melanoma.dart';
import 'package:flutter/material.dart';

import 'cancerTypes/bcc.dart';
import 'cancerTypes/scc.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Types of Skin Cancers',
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Container(
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            child: CancerTile('Basal Cell Carcinoma'),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Bcc()));
                            },
                          ),
                          GestureDetector(
                            child: CancerTile('Squamous Cell Carcinoma'),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Scc()));
                            },
                          ),
                          GestureDetector(
                            child: CancerTile('Melanoma'),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Melanoma()));
                            },
                          ),
                          GestureDetector(
                            child: CancerTile('Merkel Cell Carcinoma'),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Mcc()));
                            },
                          ),
                          GestureDetector(
                            child: CancerTile('Actinic Keratosis'),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Actinic()));
                            },
                          ),
                          GestureDetector(
                            child: CancerTile('Atypical Fibroxanthoma'),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Atypical()));
                            },
                          ),
                          GestureDetector(
                            child:
                                CancerTile('Dermatofibrosarcoma Protuberans'),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Dermato()));
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Frequently Asked Questions ",
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Column(
                  children: [
                    QuestionTile('Q.What is our Project theme?',
                        'A.Our Project Theme is Skin Cancer Detector, it is called Apollo 19'),
                    SizedBox(
                      height: 10.0,
                    ),
                    QuestionTile('Q.What is Skin Cancer?',
                        'A.Skin cancer is the abnormal growth of skin cells, which most often develops on skin exposed to the sun. But this common form of cancer can also occur on areas of your skin not ordinarily exposed to sunlight.'),
                    SizedBox(
                      height: 10.0,
                    ),
                    QuestionTile('Q.What are the major types of Skin Cancer?',
                        'A.There 7 Major types of Skin Cancer namely-\n 1. Basal Cell Carcinoma,\n 2. Squamous Cell Carcinoma,\n 3. Melanoma,\n 4. Merkel Cell Carcinoma,\n 5. Actinic Keratosis,\n 6.Atypical Fibroxanthoma,\n 7. Dermatofibrosarcoma Protuberans'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CancerTile extends StatelessWidget {
  final String title;

  CancerTile(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      alignment: Alignment.center,
      height: 150.0,
      width: 150.0,
      decoration: BoxDecoration(
        border:
            Border.all(color: mainColor, width: 1.0, style: BorderStyle.solid),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Text(
          title,
          style: TextStyle(color: Colors.black87, fontSize: 18.0),
        ),
      ),
    );
  }
}

class QuestionTile extends StatelessWidget {
  final String question, answer;
  QuestionTile(this.question, this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border:
            Border.all(color: mainColor, width: 1.0, style: BorderStyle.solid),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              answer,
              style: TextStyle(fontSize: 18.0, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
