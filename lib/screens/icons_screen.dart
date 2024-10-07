import 'package:flutter/material.dart';

class IconsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Iconos'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.home, size: 50, color: Colors.blue),
            SizedBox(width: 10),
            Icon(Icons.star, size: 50, color: Colors.amber),
            SizedBox(width: 10),
            Icon(Icons.favorite, size: 50, color: Colors.red),
            SizedBox(width: 10),
            Icon(Icons.person, size: 50, color: Colors.green),
            SizedBox(width: 10),
            Icon(Icons.settings, size: 50, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
