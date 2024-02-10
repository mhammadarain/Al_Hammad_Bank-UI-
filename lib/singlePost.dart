import 'package:flutter/material.dart';
import 'myStyle.dart';

class SinglePost extends StatelessWidget {
  const SinglePost({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),topLeft: Radius.circular(30))
          ),
          margin: const EdgeInsets.only(left: 30,),
          height: 150,
          width: double.infinity,
          child: Image.asset("img.jpg"),
        ),
        const SizedBox(height: 10,),
        Container(
          margin: const EdgeInsets.only(left: 50,right: 5,bottom: 20),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Release Imran Khan",style: postText,),
              SizedBox(width: 130,),
              Row(
                children: [
                  Icon(Icons.comment_bank_outlined,
                    size: 16,
                    color: Colors.white,),
                  SizedBox(width: 5,),
                  Text("15K",style: postText,)
                ],
              ),
              SizedBox(width: 16,),
              Row(
                children: [
                  Icon(Icons.favorite_border_outlined,
                    size: 16,
                    color: Colors.white,),
                  SizedBox(width: 5,),
                  Text("166K",style: postText,),
                  SizedBox(width: 10,)
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
