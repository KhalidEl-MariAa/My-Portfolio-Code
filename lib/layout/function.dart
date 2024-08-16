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

String getDeviceType(MediaQueryData mediaquerydata){
  double width = 0;

  if(mediaquerydata.orientation==Orientation.landscape ){
   width = mediaquerydata.size.height;
  }
  else{
   width = mediaquerydata.size.width;

  }
  
  if(width>=950){
    return "Desktop";
  }
  else if (width>=600){
    return "Tablet";
  }
  else{
    return "MobileApp";
  }

}