import 'package:flutter/material.dart';

import 'myStyle.dart';

class MyAppBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      height: 130,
      decoration: const BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80.0))
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Profile",style: titleText,),
          Icon(Icons.search,size: 25,color: Colors.white,)
        ],
      ),
    );
  }
}
