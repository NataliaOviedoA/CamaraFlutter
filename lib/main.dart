import 'package:camara/pages/home_page.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
 
 Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final firstCamera = cameras.first;

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Camara',
      initialRoute: '/',
      routes: {
        '/' : (BuildContext context) => HomePage(
          camera: firstCamera
        ), 
      },
    )
  );
}
