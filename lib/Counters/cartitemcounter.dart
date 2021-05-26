import 'package:flutter/foundation.dart';
import 'package:elegance/Config/config.dart';

class CartItemCounter extends ChangeNotifier {
  int _counter =
      Elegance.sharedPreferences.getStringList(Elegance.userCartList).length -
          1;
  int get count => _counter;
}
