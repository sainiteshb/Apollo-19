import 'package:apollo19/constants/colors.dart';
import 'package:flutter/material.dart';

class Atypical extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Apollo 19',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 30.0,
            ),
          ),
          elevation: 0.0,
          backgroundColor: mainColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                  ),
                ),
                height: 80.0,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Atypical Fibroxanthoma',
                  style: TextStyle(
                      fontSize: 23.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      'About',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      height: 150.0,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        border: Border.all(
                            color: mainColor,
                            width: 1.0,
                            style: BorderStyle.solid),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Atypical fibroxanthoma (AFX) is a dermal spindle-cell tumour that typically occurs on the head and neck of sun damaged older people. The tumour-like growth should be considered a type of skin cancer but it may behave in a benign fashion.',
                          style:
                              TextStyle(fontSize: 18.0, color: Colors.black87),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'Symptoms',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        border: Border.all(
                            color: mainColor,
                            width: 1.0,
                            style: BorderStyle.solid),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Atypical fibroxanthoma often appears in areas that have received excessive sun exposure, usually around the scalp, ears, nose, cheeks, and back of the neck, or in areas where individuals may have previously received radiotherapy treatment. They have also been reported to occur on the trunk, extremities, and in sun-protected areas. \n 1.) A solitary tumour or multiple tumours may occur.\n2.) Typically, AFX is a red, juicy, dome-shaped nodule that may be bleeding, ulcerated or crusted.\n 3.)The tumour starts off as a small nodule that grows quickly over 6 months to a size of about 2–3 cm.\n 4.) Four times as many tumours are diagnosed on the head and neck as are diagnosed in other body sites.',
                          style:
                              TextStyle(fontSize: 18.0, color: Colors.black87),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'Cure',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        border: Border.all(
                            color: mainColor,
                            width: 1.0,
                            style: BorderStyle.solid),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Atypical fibroxanthoma is treated by complete surgical excision. Small lesions may be removed by curettage. Mohs micrographic surgery is becoming the treatment of choice for large or recurrent lesions, as it reliably removes the complete tumour while sparing surrounding normal healthy tissue',
                          style:
                              TextStyle(fontSize: 18.0, color: Colors.black87),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
