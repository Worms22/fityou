import 'package:flutter/material.dart';
import 'package:flutter_structure/features/base/utils/namespaces/images.dart';

Widget singleActivityButton({
  required double width,
  required String type,
  required String icon,
}){
  return Container(
    decoration: BoxDecoration(
      color: Colors.white38,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.grey),
    ),
    width: width,
    height: 40,
    child: Stack(
      alignment: Alignment.centerLeft,
      children:<Widget>[
        Container(
          decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
          ),
          width: width/2,
          height: 40,
          child: Row(
            children: <Widget>[
              Image.asset(icon, width: 40, height: 40,),
              const Spacer(),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width /4),
          child: Text("blablablabla"),
        ),

      ],
    ),
  );
}