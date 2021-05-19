import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Image.asset("assets/images/logo.png",fit: BoxFit.cover,height: 50),
          backgroundColor:Color(0xffffffff),
          leading: Image.asset("assets/images/set.png"),
          actions: [
            Container(
              child: Image.asset("assets/images/search.png"),
            ),
            Container(
              child: Image.asset("assets/images/useset.png"),
            ),
          ],
        ),
      ),
    );
  }
}
