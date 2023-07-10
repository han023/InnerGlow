// ignore_for_file: file_names
import 'package:flutter/material.dart' show BuildContext, MediaQuery;

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

double width(BuildContext context,double value){
  return screenWidth(context)*value;
}

double height(BuildContext context,double value){
  return screenHeight(context)*value;
}
