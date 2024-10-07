import 'package:flutter/material.dart';

class PhotosRowScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fotos en Fila'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/imagen1.jpg', width: 100, height: 100),
            SizedBox(width: 10),
            Image.asset('assets/imagen2.jpg', width: 100, height: 100),
            SizedBox(width: 10),
            Image.asset('assets/imagen3.png', width: 100, height: 100),
            
          ],
        ),
      ),
    );
  }
}
