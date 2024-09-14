import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profile Page Demo'),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Employee Profile',
                style: TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold
                )
              ) // Text
            ),
            Container(
              width: 250.0,
              height: 250.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('images/sp_bob.jpg'),
                  fit: BoxFit.cover,
                  )
              )
            ),
            const Padding(padding: EdgeInsets.all(16.0),
            child: Text(
              'Spongebob',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            )
            ),
            const Padding(padding: EdgeInsets.only(left: 16.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Position',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold)
                    )
              ]
              )
              )
          ]
        ),
      ),
    );
  }
}