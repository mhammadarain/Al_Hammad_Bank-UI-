import 'package:flutter/material.dart';

import 'myStyle.dart';


class MyProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 160),
      width: double.infinity,
      height: 410,
      decoration: const BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80.0)),
      ),
      child: const Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/profile.jpeg"),
            radius: 40,
          ),
          SizedBox(height: 10,),
          Text("Hammad Arain",style: heading4,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on,size: 16,color: Colors.white),
              SizedBox(width: 10,),
              Text("Shah-re-Faisal,karachi",style: TextStyle(
                  color: Colors.white
              ),)
            ],
          ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text("250000.00",style: countText,),
                  Text("Available Balance",style: countNameText,)
                ],
              ),
              SizedBox(width: 32,),
              Column(
                children: [
                  Text("5600.00",style: countText,),
                  Text("Amount on Hold",style: countNameText,)
                ],
              ),
              SizedBox(width: 32,),
              Column(
                children: [
                  Text("0.00",style: countText,),
                  Text("Unclear Fund",style: countNameText,)
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
