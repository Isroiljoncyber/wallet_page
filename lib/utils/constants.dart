
import 'package:flutter/material.dart';

import '../price_model.dart';

var scaffoldColor = const Color(0xffffffff);
var accountColor = const Color(0xff4AADFB);
var textColor = const Color(0xff010101);

TextStyle kTextStyle({Color? color, double size= 14, FontWeight fontWeight = FontWeight.w500, double? letterSpace}){
  return  TextStyle(color: color ?? textColor,fontSize: size, fontWeight: fontWeight, letterSpacing: letterSpace);
}

List<PriceModel> listPrice = [
  PriceModel("Groceries", "5:20 PM", "-\$678"),
  PriceModel("Shopping", "6:25 PM", "-\$892"),
  PriceModel("Parking", "8:25 PM", "-\$200"),
];