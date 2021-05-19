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
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.grey[200],
          elevation: 0,
          leading: Image.asset("assets/images/menu.png",height: 30),
          actions: [
            Container(
            decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            ),
            child: Image.asset("assets/images/loupe.png"
            ,height: 0),
            margin: EdgeInsets.all(10),
            
            ),
          ],
      ),
      body:Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text(
                "ELEGANCE",
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
             ),
            ],
          ),
          Row(
            children: [
              buildFlatButton("Women",isSelect:true),
              buildFlatButton("Men"),
              buildFlatButton("Kids"),
            ],
          )
        ],
      )  ),
    );
  }

  FlatButton buildFlatButton(String text,{bool isSelect = false}) {
    return FlatButton(
      onPressed:()
            {
              print("Button Pressed");
            },
          child: Text(
            text,
            style: TextStyle(color: Colors.white,fontSize: 20),
            ),
          shape: StadiumBorder(),
          color: isSelect? Colors.pink[100]:Colors.grey[300],
            );
  }
}