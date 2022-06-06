
import 'package:cab_rider/datamodels/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


String serverKey = 'key=AAAAKAsL98E:APA91bEJ_NO0tmqRjAfYevCaz489kOYveuxgdzNAkenfZHPH76FU3EadHbkN6EMIllKs6CWqvCDUboISnmnoLbchqOJmDqszRr_5vo8IROPYomnFMTw84vTKhlZ3wFP_m_vDS42hOxd7';

String mapKey = 'AIzaSyD1sY6u7hDhX766U-RF3EWYrGlXLEk4YVg';

final CameraPosition googlePlex = CameraPosition(
  target: LatLng(37.42796133580664, -122.085749655962),
  zoom: 14.4746,
);

FirebaseUser currentFirebaseUser;

User currentUserInfo;