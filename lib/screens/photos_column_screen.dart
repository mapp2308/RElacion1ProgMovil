import 'package:flutter/material.dart';

class PhotosColumnScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fotos en Columna'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/imagen1.jpg', width: 200, height: 200),
            SizedBox(height: 10),
            Image.asset('assets/imagen2.jpg', width: 200, height: 200),
            SizedBox(height: 10),
            Image.asset('assets/imagen3.png', width: 200, height: 200),
          ],
        ),
      ),
    );
  }
}
