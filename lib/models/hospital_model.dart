import 'package:google_maps_flutter/google_maps_flutter.dart';

class Hospital {
  String hosName;
  String address;
  String description;
  String thumbnail;
  LatLng locationCoords;

  Hospital(
      {this.hosName,
      this.address,
      this.description,
      this.thumbnail,
      this.locationCoords});
}

final List<Hospital> hosOuts = [
  Hospital(
    hosName: 'Shri Dipti Dermatologist Centre',
    address: "Yeturu Tower's Gurds, Indira Nagar",
    description: 'Dermatologist',
    locationCoords: LatLng(17.414, 78.461202),
  ),
  Hospital(
    hosName: "Hyma's Skin clinic",
    address: 'Srinagar Colony, Hyderabad',
    description: 'Dermatologist',
    locationCoords: LatLng(17.430519, 78.441130),
  ),
  Hospital(
    hosName: 'TrueSkin Dermatology',
    address: 'Kakatiya Hills, Madhapur',
    description: 'Dermatologist',
    locationCoords: LatLng(17.450099, 78.399892),
  ),
  Hospital(
    hosName: 'Saya Skin Clinic',
    address: 'Kavuri Hills, Madhapur',
    description: 'Dermatologist',
    locationCoords: LatLng(17.444456, 78.397527),
  ),
  Hospital(
    hosName: 'ArshiClinic',
    address: 'Jubilee Hills, Banjara Hills',
    description: 'Dermatologist',
    locationCoords: LatLng(17.409292, 78.450313),
  ),
  Hospital(
    hosName: 'Dr Asna Anjum',
    address: 'Red Hills, Nampally',
    description: 'Dermatologist',
    locationCoords: LatLng(17.399926, 78.465126),
  ),
  Hospital(
    hosName: 'Derma Skin Clinic',
    address: 'Hyderguda,Hyderabad',
    description: 'Dermatologist',
    locationCoords: LatLng(1.394740, 78.478008),
  ),
  Hospital(
    hosName: 'Dr.A Kiran Kumar',
    address: 'Himayat Nagar,Hyderabad',
    description: 'Dermatologist',
    locationCoords: LatLng(17.398888, 78.484534),
  ),
  Hospital(
    hosName: 'Aura Skin Clinic',
    address: 'Himayat Nagar,Hyderabad',
    description: 'Dermatologist',
    locationCoords: LatLng(17.399912, 78.485843),
  ),
  Hospital(
    hosName: 'Aaditya Derma Skin Clinic',
    address: 'Vijaya Nagar, Hyderabad',
    description: 'Dermatologist',
    locationCoords: LatLng(17.395463, 78.453772),
  ),
  Hospital(
    hosName: 'MediSkin',
    address: 'Venkata Swamy Nagar',
    description: 'Dermatologist',
    locationCoords: LatLng(17.399867, 78.491501),
  ),
  Hospital(
    hosName: 'Dr.Gowri V',
    address: 'Opp Saptagiri Theatre',
    description: 'Dermatologist',
    locationCoords: LatLng(17.408886, 78.497521),
  ),
//Hospital(
//    hosName: '',
//    address: '',
//    description: 'Dermatologist',
//    locationCoords: LatLng(),
//  ),
];
