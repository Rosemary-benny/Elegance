//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/app_bg.png"),
            fit: BoxFit.cover,
          ),
          
        ),
        child: null,),
      
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset("assets/images/logo.png",
            fit: BoxFit.cover, height: 50),
        backgroundColor: Colors.white,
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
    );
  }
}
