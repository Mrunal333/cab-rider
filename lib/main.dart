// @dart=2.9
import 'package:cab_rider/dataprovider/appdata.dart';
import 'package:cab_rider/globalvariable.dart';
import 'package:cab_rider/screens/loginpage.dart';
import 'package:cab_rider/screens/mainpage.dart';
import 'package:cab_rider/screens/registrationpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await FirebaseApp.configure(
    name: 'db2',
    options: Platform.isIOS
        ? const FirebaseOptions(
            googleAppID: '1:171984025537:android:9fcbc07d7a7da7ffe16140',
            gcmSenderID: '171984025537',
            databaseURL: 'https://geetaxi-8c57a-default-rtdb.firebaseio.com/',
          )
        : const FirebaseOptions(
            googleAppID: '1:169450788828:android:418ca150b8799c9ef9a119',
            apiKey: 'AIzaSyDQSm22dfjceA0OiQ9XL-0tQ0d7_XZTXpQ',
            databaseURL: 'https://geetaxi-9c60a.firebaseio.com',
            gcmSenderID:
             'AAAAKAsL98E:APA91bEJ_NO0tmqRjAfYevCaz489kOYveuxgdzNAkenfZHPH76FU3EadHbkN6EMIllKs6CWqvCDUboISnmnoLbchqOJmDqszRr_5vo8IROPYomnFMTw84vTKhlZ3wFP_m_vDS42hOxd7',
          ),
  );

  //currentFirebaseUser = await FirebaseAuth.instance.currentUser();
  runApp(MyApp());
}       

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppData(),
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Brand-Regular', 
          primarySwatch: Colors.blue,
        ),
        initialRoute:
            (currentFirebaseUser == null) ? LoginPage.id : MainPage.id,
        routes: {
          RegistrationPage.id: (context) => RegistrationPage(),
          LoginPage.id: (context) => LoginPage(),
          MainPage.id:    (context) => MainPage(), 
        },
      ),
    );
  }
}
