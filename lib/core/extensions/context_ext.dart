import 'package:flutter/cupertino.dart';

extension ContextExt on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;

  double setWidth(double value){
    return width * value;
  }

  double setHeight(double value){
    return height * value;
  }
}