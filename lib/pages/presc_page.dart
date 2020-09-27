import 'package:apollo19/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrescPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(
                    color: mainColor, width: 1.0, style: BorderStyle.solid),
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Prescription ',
                  style: TextStyle(
                    color: mainColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: mainColor,
                      ),
                    ),
                    Text('Back'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  child: Image(
                image: NetworkImage(
                    'https://firebasestorage.googleapis.com/v0/b/pybase-c69c6.appspot.com/o/prescription%2Fuser1.jpg?alt=media&token=42258687-c214-467f-bf6f-0b8fff76de6c'),
              )),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              alignment: Alignment.center,
              height: 30.0,
              width: 100.0,
              decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: Text(
                'Download',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
