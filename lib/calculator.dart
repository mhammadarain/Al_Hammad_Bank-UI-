import 'package:ah_bank/myStyle.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import 'atmCard.dart';
import 'components/my_button.dart';
import 'home.dart';
import 'ownerProfile.dart';

class MyCalculator extends StatefulWidget {
  const MyCalculator({super.key});

  @override
  State<MyCalculator> createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {

  var userInput = "";
  var answer = "0";
  final Color color1 = const Color(0xff003560);
  final Color color2 = const Color(0xFC6E6D6D);
  final Color bColorBlue = Colors.blue;
  final Color bColorGray = const Color(0xcbfaf9f9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      bottomNavigationBar: CurvedNavigationBar(
        key: GlobalKey(),
        index: 2,
        height: 60,
        color: whitColor,
        buttonBackgroundColor:  whitColor,
        backgroundColor: mainColor,
        items: [
          Icon(Icons.home, size: 30, color: mainColor),
          Icon(Icons.calculate_outlined, size: 30, color:mainColor,),
          Icon(Icons.qr_code_2_sharp, size: 40, color: mainColor),
          Icon(Icons.add_card, size: 30, color: mainColor),
          Icon(Icons.perm_identity_outlined, size: 30, color: mainColor),
        ],
        onTap: (index) {
          // Handle navigation to different screens based on the tapped index
          setState(() {
          });

          switch (index) {
            case 0:
            // Navigate to Home Screen
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomePage()));
              break;
            case 1:
            // Navigate to Chat screen
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MyCalculator()));
              break;
            case 2:
            // Navigate to QR scanner
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomePage()));
              break;
            case 3:
            // Navigate to Add Card screen
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MyAtmCard()));
              break;
            case 4:
            // Navigate to Profile screen
              Navigator.push(context, MaterialPageRoute(builder: (context) => const OwnerProfile()));
              break;
          }
        },
      ),
      body: SafeArea(
            child: Column(
              children: [
                const Center(child: Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text("CALCULATE INCOME",style: TextStyle(color: whitColor,fontSize: 35),),
                )),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30,right: 5,left: 5),
                    child: Container(
            
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFC6E6D6D),
                            width: 0.2,
                            style: BorderStyle.solid),
                        color: const Color(0xA31A1A1A),
                      ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Align(
                              alignment: Alignment.bottomRight,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(userInput.toString(), style: const TextStyle(
                                  fontSize: 30, color: Colors.white),),
                            ),
                            const SizedBox(height: 45,),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(answer.toString(), style: const TextStyle(
                                  fontSize: 45, color: Colors.white),),
                            ),
                          ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex:2,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      color: mainColor,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              MyButton(title: "AC", onPress: () {
                                userInput = "";
                                answer = "";
                                setState(() {
            
                                });
                              }, color: color2, bColor: bColorGray,),
                              MyButton(title: "^", onPress: () {
                                userInput += "^";
                                setState(() {
            
                                });
                              }, color: color2, bColor: bColorGray,),
                              MyButton(title: "%", onPress: () {
                                userInput += "%";
                                setState(() {
            
                                });
                              }, color: color2, bColor: bColorGray,),
                              MyButton(title: "/", onPress: () {
                                userInput += "/";
                                setState(() {
            
                                });
                              }, color: color1, bColor: bColorBlue,)
                            ],
                          ),
                          Row(
                            children: [
                              MyButton(title: "7", onPress: () {
                                userInput += "7";
                                setState(() {});
                              },),
                              MyButton(title: "8", onPress: () {
                                userInput += "8";
                                setState(() {
            
                                });
                              },),
                              MyButton(title: "0", onPress: () {
                                userInput += "0";
                                setState(() {
            
                                });
                              },),
                              MyButton(title: "x", onPress: () {
                                userInput += "*";
                                setState(() {
            
                                });
                              }, color: color1, bColor: bColorBlue,)
                            ],
                          ),
                          Row(
                            children: [
                              MyButton(title: "4", onPress: () {
                                userInput += "4";
                                setState(() {
            
                                });
                              },),
                              MyButton(title: "5", onPress: () {
                                userInput += "5";
                                setState(() {
            
                                });
                              },),
                              MyButton(title: "6", onPress: () {
                                userInput += "6";
                                setState(() {
            
                                });
                              },),
                              MyButton(title: "-", onPress: () {
                                userInput += "-";
                                setState(() {
            
                                });
                              }, color: color1, bColor: bColorBlue,)
                            ],
                          ),
                          Row(
                            children: [
                              MyButton(title: "1", onPress: () {
                                userInput += "1";
                                setState(() {
            
                                });
                              },),
                              MyButton(title: "2", onPress: () {
                                userInput += "2";
                                setState(() {
            
                                });
                              },),
                              MyButton(title: "3", onPress: () {
                                userInput += "3";
                                setState(() {
            
                                });
                              },),
                              MyButton(title: "+", onPress: () {
                                userInput += "+";
                                setState(() {
            
                                });
                              }, color: color1, bColor: bColorBlue,)
                            ],
                          ),
                          Row(
                            children: [
                              MyButton(title: "DEL", onPress: () {
                                userInput =
                                    userInput.substring(0, userInput.length - 1);
                                setState(() {
            
                                });
                              }, color: color2, bColor: bColorGray,),
                              MyButton(title: "0", onPress: () {
                                userInput += "0";
                                setState(() {
            
                                });
                              },),
                              MyButton(title: ".", onPress: () {
                                userInput += ".";
                                setState(() {
            
                                });
                              },),
                              MyButton(title: "=", onPress: () {
                                equalPress();
                                setState(() {
            
                                });
                              }, color: color1, bColor: bColorBlue,)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
        ),
    );
  }

  void equalPress() {
    Parser p = Parser();
    Expression expression = p.parse(userInput);

    double eval = expression.evaluate(EvaluationType.REAL, ContextModel());
    answer = eval.toString();
  }
}