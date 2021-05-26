import 'package:elegance/Authentication/authenication.dart';
import 'package:elegance/Config/config.dart';
import 'package:elegance/Address/addAddress.dart';
import 'package:elegance/Store/Search.dart';
import 'package:elegance/Store/cart.dart';
import 'package:elegance/Orders/myOrders.dart';
import 'package:elegance/Store/storehome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
children: [Container(
padding: EdgeInsets.only(top: 25.0, bottom: 10.0),
  
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                colors: [Colors.white, Colors.pink.shade50],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
            ),
            child: Column(children: [
              Material(
                borderRadius: BorderRadius.all(Radius.circular(80.0)),
                elevation: 8.0,
                child: Container(
                  height: 160.0,
                  width: 160.0,
                  child: CircleAvatar(backgroundImage: NetworkImage(
                    Elegance.sharedPreferences.getString(Elegance.userAvatarUrl)),),
                ),
              ),
              SizedBox(height:10.0 ,),
              Text(
                Elegance.sharedPreferences.getString(Elegance.userName),
                style: TextStyle(color: Colors.black,fontSize: 35.0,fontFamily: "Signatra"),
              ),
            ],),
),
SizedBox(height: 12.0,),
Container(
  padding: EdgeInsets.only(top:1.0),
   decoration: new BoxDecoration(
              gradient: new LinearGradient(
                colors: [Colors.white, Colors.pink.shade50],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
            ),
child: Column(children: [
  ListTile(
    leading: Icon(Icons.home,color: Colors.black,),
    title: Text("Home",style: TextStyle(color: Colors.black45),),
    onTap: (){
      Route route = MaterialPageRoute(builder: (c) => StoreHome());
        Navigator.pushReplacement(context, route);
    },
  ),
  Divider(height: 10.0,color: Colors.white,thickness: 6.0,),
  ListTile(
    leading: Icon(Icons.home,color: Colors.black,),
    title: Text("My orders",style: TextStyle(color: Colors.black45),),
    onTap: (){
      Route route = MaterialPageRoute(builder: (c) => MyOrders());
        Navigator.pushReplacement(context, route);
    },
  ),
  Divider(height: 10.0,color: Colors.white,thickness: 6.0,),
  ListTile(
    leading: Icon(Icons.home,color: Colors.black,),
    title: Text("My Cart",style: TextStyle(color: Colors.black45),),
    onTap: (){
      Route route = MaterialPageRoute(builder: (c) => CartPage());
        Navigator.pushReplacement(context, route);
    },
  ),
  Divider(height: 10.0,color: Colors.white,thickness: 6.0,),
  ListTile(
    leading: Icon(Icons.home,color: Colors.black,),
    title: Text("Search",style: TextStyle(color: Colors.black45),),
    onTap: (){
      Route route = MaterialPageRoute(builder: (c) => SearchProduct());
        Navigator.pushReplacement(context, route);
    },
  ),
  Divider(height: 10.0,color: Colors.white,thickness: 6.0,),
  ListTile(
    leading: Icon(Icons.home,color: Colors.black,),
    title: Text("Add New Address",style: TextStyle(color: Colors.black45),),
    onTap: (){
      Route route = MaterialPageRoute(builder: (c) => AddAddress());
        Navigator.pushReplacement(context, route);
    },
  ),
  Divider(height: 10.0,color: Colors.white,thickness: 6.0,),
  ListTile(
    leading: Icon(Icons.home,color: Colors.black,),
    title: Text("Logout",style: TextStyle(color: Colors.black45),),
    onTap: (){
      Elegance.auth.signOut().then((c) {
        Route route = MaterialPageRoute(builder: (c) => AuthenticScreen());
        Navigator.pushReplacement(context, route);
      });
    },
  ),
  Divider(height: 10.0,color: Colors.white,thickness: 6.0,),
],),
),
],
      ),
    );
  }
}
