import 'package:elegance/Widgets/customAppBar.dart';
import 'package:elegance/Widgets/myDrawer.dart';
import 'package:elegance/Models/item.dart';
import 'package:flutter/material.dart';
import 'package:elegance/Store/storehome.dart';


class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}



class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
      ),
    );
  }

}

const boldTextStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
const largeTextStyle = TextStyle(fontWeight: FontWeight.normal, fontSize: 20);
