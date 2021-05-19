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
          leading: 
           Icon(Icons.menu, color: Colors.black ,size: 40.0),
          //Image.asset("assets/images/menu.png",height: 30,width: 30),
          actions: [
            Container(
            decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            ),
            child: Icon(Icons.search, color: Colors.black, size: 40.0),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildFlatButton("Women",isSelect:true),
              buildFlatButton("Men"),
              buildFlatButton("Kids"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: 
          Container(
            decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
            ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 1,
              blurRadius: 20,

            )
          ]  
          ),
                 child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildColumnAtTop("Tops", isSelected: true),
                        buildColumnAtTop("Kurthis"),
                        buildColumnAtTop("Ethinic"),
                        buildColumnAtTop("Jeans"),
                        buildColumnAtTop("Casual"),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          buildColumnWithRow("1","Harpa","29"),
                          buildColumnWithRow("2","Trends","23"),
                          buildColumnWithRow("3","Max","40"),
                          buildColumnWithRow("4","H&M","60"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding buildColumnWithRow(String img,String title,String price) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 220,
            width: 160,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/top$img.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "\$ $price",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }

  Column buildColumnAtTop(String text, {bool isSelected = false}) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.black : Colors.grey,
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        if (isSelected)
          Container(
            height: 5,
            width: 5,
            decoration:
                BoxDecoration(color: Colors.black, shape: BoxShape.circle),
          )
      ],
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