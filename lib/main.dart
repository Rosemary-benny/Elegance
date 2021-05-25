import 'package:flutter/material.dart';

import 'DetailsPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[200],
        bottomNavigationBar: Container(
          height: 70,
          color: Colors.white,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 20, color: Colors.grey[300], spreadRadius: 1)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildContainerBottomNav(Icons.person),
                buildContainerBottomNav(Icons.shopping_bag),
                buildContainerBottomNav(Icons.home, isSelected: true),
                buildContainerBottomNav(Icons.favorite),
                buildContainerBottomNav(Icons.settings),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.grey[200],
          elevation: 0,
          leading: Icon(Icons.menu, color: Colors.black, size: 40.0),
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
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "ELEGANCE",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildFlatButton("Women", isSelect: true),
                    buildFlatButton("Men"),
                    buildFlatButton("Kids"),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
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
                      ]),
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
                      MyDressList(),
                      SizedBox(
                        height: 20,
                      ),
                      LineBar(),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Summer Wear",
                              style: TextStyle(fontSize: 24),
                            ),
                            Text(
                              "View All",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            buildbottomContainer(
                                "1", "Off Shoulders", "20", "15"),
                            buildbottomContainer(
                                "2", "Wrangler Dress", "25", "20"),
                            buildbottomContainer(
                                "3", "Plain White", "24", "18"),
                            buildbottomContainer("4", "Trendy T-shirt", "18", "14"),
                            buildbottomContainer("5", "Pastel Skirt", "28", "24"),
                            buildbottomContainer("6", "Beach Wear", "25", "17"),
                            buildbottomContainer("7", "Pink top", "23", "15"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildContainerBottomNav(IconData icon, {isSelected = false}) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.pink[100] : Colors.white,
        shape: BoxShape.circle,
        boxShadow: isSelected
            ? [BoxShadow(color: Colors.grey, blurRadius: 10, spreadRadius: 1)]
            : [],
      ),
      height: 50,
      width: 50,
      child: Icon(
        icon,
        color: isSelected ? Colors.white : Colors.black,
      ),
    );
  }

  Container buildbottomContainer(
      String imge, String title1, String price1, String price2) {
    return Container(
      height: 150,
      width: 230,
      margin: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: SizedBox(
                  height: 120,
                  width: 100,
                  child: Image.asset(
                    "assets/images/k$imge.jpg",
                    fit: BoxFit.cover,
                  ))),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title1),
                Text(
                  "\$ $price1",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                Spacer(),
                Text(
                  "\$ $price2",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyDressList extends StatelessWidget {
  const MyDressList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: 20),
          
         
          buildColumnWithRow("1", "Harpa", "29",context),
          buildColumnWithRow("2", "Trends", "23",context),
          buildColumnWithRow("3", "Max", "40",context),
          buildColumnWithRow("4", "H&M", "60",context),
          buildColumnWithRow("5", "EWF", "30",context),
           buildColumnWithRow("6", "W", "26",context),
            buildColumnWithRow("7", "Fab", "33",context),
        ],
      ),
    );
  }
}

GestureDetector buildColumnWithRow(
  String img, String title, String price,BuildContext context) {
  return  GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                  return DetailsPage(
            title: title,
            img: img,
            context: context,
            price: price,
          );
        }));
      },
        child: Padding(
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
        )
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

FlatButton buildFlatButton(String text, {bool isSelect = false}) {
  return FlatButton(
    onPressed: () {
      print("Button Pressed");
    },
    child: Text(
      text,
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    shape: StadiumBorder(),
    color: isSelect ? Colors.pink[100] : Colors.grey[300],
  );
}

class LineBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.height);
    return Container(
      height: 5,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 40),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
      ),
      child: Container(
        height: 5,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
