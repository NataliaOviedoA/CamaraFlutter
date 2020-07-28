import 'dart:io';

import 'package:flutter/material.dart';

class DisplayPicturePage extends StatelessWidget {
  final String imagePath;
  const DisplayPicturePage({Key key, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina foto'),
      ),
      body: Image.file(File(imagePath))
    );
  }
}