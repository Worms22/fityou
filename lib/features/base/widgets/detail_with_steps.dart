import 'package:flutter/cupertino.dart';

Widget detailWithSteps(){
  return Column(
    children: [
      Row(
        children: [
          Text("Step 1"),
          Text("1"),
        ],
      ),
      Row(
        children: [
          Text("Step 2"),
          Text("3"),
        ],
      ),
      Row(
        children: [
          Text("Step 3"),
          Text("5"),
        ],
      ),
    ],
  );
}