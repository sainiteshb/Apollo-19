import 'package:apollo19/constants/colors.dart';
import 'package:flutter/material.dart';

class Bcc extends StatelessWidget {
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
                  'Basal Cell Carcinoma',
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
                          'Basal cell carcinoma is the most common type of skin cancer and the most frequently occurring of all cancers. Eight out of every 10 skin cancers are basal cell carcinomas, making this form of skin cancer far and away the most common',
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
                          'A basal cell carcinoma will show itself as a change in the skin. It can appear as a pearly white, skin-colored, or pink bump that is somewhat translucent. It can also be a brown, black, or blue lesion with slightly raised borders. On the back or chest, a flat, scaly, reddish patch is more common. BCC basically looks like - \n1.) A pearly white, skin-colored, or pink bump on the skin. It will be translucent, meaning you can see through it slightly, and you can often see blood vessels in it.\n 2.) A brown, black, or blue lesion or a lesion with dark spots. It will have a slightly raised, translucent border. \n3.)A flat, scaly, reddish patch of skin with a raised edge. These will occur more commonly on the back or chest. \n 4.)A white, waxy, scar-like lesion without a clearly defined border. This “morpheaform” basal cell carcinoma is the least common.  ',
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
                          'Surgery is the typical treatment method. Depending on the size and location of the removed growth, the wound may be sutured closed, covered with a skin graft, or allowed to heal on its own. Medications used for the treatment of basal cell carcinoma (BCC) include antineoplastic agents such as \n 5-fluorouracil and imiquimod; the photosensitizing agent methyl aminolevulinate cream; and the acetylenic retinoid tazarotene.',
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
