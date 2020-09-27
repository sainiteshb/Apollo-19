import 'package:apollo19/constants/colors.dart';
import 'package:flutter/material.dart';

class Mcc extends StatelessWidget {
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
                  'Merkel Cell Carcinoma',
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
                          'Also known as neuroendocrine carcinoma of the skin, Merkel cell carcinoma is a rare type of skin cancer. It occurs in the Merkel cells, which are found at the base of the epidermis, the skin’s outermost layer',
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
                          'Merkel cell carcinoma usually starts on areas of skin exposed to the sun, especially the face, neck, arms, and legs. It first appears as a single pink, red, or purple shiny bump that doesn’t hurt. These can bleed at times. Merkel cell carcinoma is rare, and the first signs of it can look like more common forms of skin cancer that aren’t as aggressive. That makes early detection critical, as in many cases only a biopsy will identify it as Merkel cell carcinoma. ',
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
                          'As with melanoma, early diagnosis of Merkel cell carcinoma is imperative to increase the patient’s odds of successful treatment. Excision is the first treatment option for Merkel cell carcinoma. The tumor along with a border of normal skin is removed. This may be done with a standard scalpel excision or it may be done with Mohs surgery to limit the amount of healthy tissue removed and manage future scarring. Over medication, the suggested treatments are chemotherapy and radiation therapy',
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
