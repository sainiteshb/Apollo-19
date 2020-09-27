import 'package:apollo19/constants/colors.dart';
import 'package:flutter/material.dart';

class Actinic extends StatelessWidget {
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
                  'Actinic',
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
                          'Otherwise known as a “precancer,” an actinic keratosis is usually a scaly spot that is found on sun-damaged skin. Actinic keratoses are usually non-tender, may be pink or red and rough, resembling sandpaper. They occur most frequently on the face, scalp, neck, and forearms. Actinic keratoses are considered precursors to squamous cell carcinoma, although most do not progress past the precancer stage',
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
                          'Actinic keratosies growths are not painful and are not overly disfiguring because they remain small. These are the signs: Rough, scaly, dry patch of skin, Usually less than 1 inch in diameter, Flat to slightly raised patch or bump atop the skin, Sometimes can be hard and wart-like, Color may be pink, red, or brown, May itch or burn when brushed.',
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
                          'Fluorouracil cream, Imiquimod cream, Ingenol mebutate gel, Diclofenac gel are the suggested medication. If the cancer is identified at later stages, surgery is the only effective option left.',
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
