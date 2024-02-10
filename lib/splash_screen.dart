import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'loginPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 4),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff02223b),
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg.jpg"),
              fit: BoxFit.cover
            )
          ),
          child: Column(
            children: [
              const SizedBox(height: 300,),
              const Center(
                child: Image(
                    height: 320,
                    width:  320,
                    image: AssetImage("assets/logo.png")),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 170,),
        
                  AnimatedTextKit(animatedTexts: [
                    FadeAnimatedText("Al-Hammad Bank",
                        textStyle: const TextStyle(fontSize: 30,fontWeight: FontWeight.w200,color: Colors.white))
                  ],
                    totalRepeatCount:22 ,
                  ),
        
                ],
              ),
            ],
          ),
        ),
    );
  }
}
