// import 'package:flutter/material.dart';

// class LayOutPart extends StatelessWidget {
//   const LayOutPart({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context, constraints) {
//       if(constraints.maxHeight==)
//     },);
//   }
// }

import 'package:flutter/material.dart';
class Layout{
double width = 0;
  // ignore: unused_local_variable
  double height = 0; 
  String deviceType = '0';
  MediaQueryData mediaquerydata;

  Layout({required this.mediaquerydata}){
  if(mediaquerydata.orientation==Orientation.landscape){
   width = mediaquerydata.size.height;
   height = mediaquerydata.size.width;
  }
  else{
   width = mediaquerydata.size.width;
   height = mediaquerydata.size.height;

  }
  if(width>=950){
    deviceType= "Desktop";
  }
  else if (width>=600){
    deviceType =  "Tablet";
  }
  else{
    deviceType =  "MobileApp";
  }

  }
  Map getDeviceType(MediaQueryData mediaquerydata){
  

  
   return {
    "Height":height,
    "Width":width,
    "Device":deviceType
   };
}
}
