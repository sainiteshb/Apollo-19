import 'dart:io';
import 'package:apollo19/pages/presc_page.dart';
import 'package:apollo19/pages/signin_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:apollo19/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImageCapture(),
    );
  }
}

class ImageCapture extends StatefulWidget {
  createState() => _ImageCaptureState();
}

class _ImageCaptureState extends State<ImageCapture> {
  List _outputs;
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _loading = true;

    loadModel().then((value) {
      setState(() {
        _loading = false;
      });
    });
  }

  loadModel() async {
    await Tflite.loadModel(
      model: "assets/model.tflite",
      labels: "assets/labels.txt",
      numThreads: 1,
    );
  }

  classifyImage(File image) async {
    var output = await Tflite.runModelOnImage(
        path: image.path,
        imageMean: 0.0,
        imageStd: 255.0,
        numResults: 2,
        threshold: 0.2,
        asynch: true);
    setState(() {
      _loading = false;
      _outputs = output;
    });
  }

  @override
  void dispose() {
    Tflite.close();
    super.dispose();
  }

  File _imageFile;

  Future<void> _cropImage() async {
    File cropped = await ImageCropper.cropImage(
      sourcePath: _imageFile.path,
      aspectRatioPresets: Platform.isAndroid
          ? [
              CropAspectRatioPreset.square,
              CropAspectRatioPreset.ratio3x2,
              CropAspectRatioPreset.original,
              CropAspectRatioPreset.ratio4x3,
              CropAspectRatioPreset.ratio16x9
            ]
          : [
              CropAspectRatioPreset.original,
              CropAspectRatioPreset.square,
              CropAspectRatioPreset.ratio3x2,
              CropAspectRatioPreset.ratio4x3,
              CropAspectRatioPreset.ratio5x3,
              CropAspectRatioPreset.ratio5x4,
              CropAspectRatioPreset.ratio7x5,
              CropAspectRatioPreset.ratio16x9
            ],
      androidUiSettings: AndroidUiSettings(
          toolbarTitle: 'Crop Image',
          toolbarColor: mainColor,
          toolbarWidgetColor: Colors.white,
          initAspectRatio: CropAspectRatioPreset.original,
          lockAspectRatio: false),
    );

    setState(() {
      _imageFile = cropped ?? _imageFile;
    });
  }

  Future<void> _pickImage(ImageSource source) async {
    File selected = await ImagePicker.pickImage(source: source);

    setState(() {
      _imageFile = selected;
    });
    classifyImage(_imageFile);
  }

  void _clear() {
    setState(() => _imageFile = null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 40.0,
        child: Container(
          margin: EdgeInsets.only(left: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton.extended(
                heroTag: "btn1",
                backgroundColor: mainColor,
                icon: Icon(Icons.photo_camera),
                label: Text('Camera'),
                onPressed: () => _pickImage(ImageSource.camera),
              ),
              FloatingActionButton.extended(
                heroTag: "btn2",
                backgroundColor: mainColor,
                icon: Icon(Icons.photo_library),
                label: Text('Gallery'),
                onPressed: () => _pickImage(ImageSource.gallery),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: _imageFile == null
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        color: mainColor,
                      ),
                      height: 100.0,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              imageUrl,
                            ),
                            radius: 30,
                            backgroundColor: Colors.transparent,
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'NAME',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54),
                              ),
                              Text(
                                name,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'EMAIL',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54),
                              ),
                              Text(
                                email,
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      height: 90.0,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'Upload your image to get Prediction of your Skin problem ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Container(
                      height: 150.0,
                      child: SvgPicture.asset('assets/home.svg'),
                    ),
                  ],
                ),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: mainColor,
                          width: 1.0,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Result ',
                        style: TextStyle(
                          color: mainColor,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PrescPage()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 120.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: Text(
                        'Prescription',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      _imageFile == null
                          ? Container()
                          : Image.file(
                              _imageFile,
                              height: 250.0,
                              width: 300.0,
                            ),
                      _imageFile == null
                          ? Container()
                          : _outputs != null
                              ? Column(
                                  children: [
                                    Text(
                                      'Predicted Skin Problem :',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Text(
                                      _outputs[0]["label"],
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                  ],
                                )
                              : Container(child: Text(""))
                    ],
                  ),
                  _imageFile == null
                      ? Container()
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            FlatButton(
                              child: Icon(Icons.crop),
                              onPressed: _cropImage,
                            ),
                            FlatButton(
                              child: Icon(Icons.refresh),
                              onPressed: _clear,
                            ),
                          ],
                        ),
                  Uploader(
                    file: _imageFile,
                  )
                ],
              ),
      ),
    );
  }
}

class Uploader extends StatefulWidget {
  final File file;
  Uploader({Key key, this.file}) : super(key: key);
  @override
  _UploaderState createState() => _UploaderState();
}

class _UploaderState extends State<Uploader> {
  final FirebaseStorage _storage =
      FirebaseStorage(storageBucket: 'gs://apollo19-19c1e.appspot.com');

  StorageUploadTask _uploadTask;

  void _startUpload() {
    String filePath = 'images/user - ${DateTime.now()}.png';

    setState(() {
      _uploadTask = _storage.ref().child(filePath).putFile(widget.file);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_uploadTask != null) {
      return StreamBuilder<StorageTaskEvent>(
          stream: _uploadTask.events,
          builder: (_, snapshot) {
            var event = snapshot?.data?.snapshot;

            double progressPercent = event != null
                ? event.bytesTransferred / event.totalByteCount
                : 0;

            return Column(
              children: [
                if (_uploadTask.isPaused)
                  FlatButton(
                    child: Icon(Icons.play_arrow),
                    onPressed: _uploadTask.resume,
                  ),

                if (_uploadTask.isInProgress)
                  FlatButton(
                    child: Icon(Icons.pause),
                    onPressed: _uploadTask.pause,
                  ),

                // Progress bar
                LinearProgressIndicator(value: progressPercent),
                Text('${(progressPercent * 100).toStringAsFixed(2)} % '),
              ],
            );
          });
    } else {
      // Allows user to decide when to start the upload
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButton.icon(
            label: Text('Upload to Firebase'),
            icon: Icon(Icons.file_upload),
            onPressed: _startUpload,
          ),
        ],
      );
    }
  }
}
