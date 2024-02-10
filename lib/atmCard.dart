import "package:ah_bank/drawer.dart";
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'myStyle.dart';
import 'ownerProfile.dart';

class MyAtmCard extends StatefulWidget {
  const MyAtmCard({super.key});

  @override
  State<MyAtmCard> createState() => _MyAtmCardState();
}

class _MyAtmCardState extends State<MyAtmCard> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("ATM Cards",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)),
          backgroundColor: mainColor,
          iconTheme: const IconThemeData(color: Colors.white),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_active),)
          ],
        ),
        drawer: MainDrawer(),
        bottomNavigationBar: CurvedNavigationBar(
          key: GlobalKey(),
          index: 2,
          height: 60,
          color:  mainColor,
          buttonBackgroundColor:  mainColor,
          backgroundColor: Colors.white,
          items: [
            Icon(Icons.home, size: 30, color: Colors.white,),
            Icon(Icons.mark_unread_chat_alt_outlined, size: 30, color: Colors.white,),
            Icon(Icons.qr_code_2_sharp, size: 40, color: Colors.white,),
            Icon(Icons.add_card, size: 30, color: Colors.white,),
            Icon(Icons.perm_identity_outlined, size: 30, color: Colors.white,),
          ],
          onTap: (index) {
            // Handle navigation to different screens based on the tapped index
            setState(() {
            });

            switch (index) {
              case 0:
              // Navigate to Home Screen
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                break;
              case 1:
              // Navigate to Chat screen
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyAtmCard()));
                break;
              case 2:
              // Navigate to QR Scanner
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                break;
              case 3:
              // Navigate to Add Card screen
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyAtmCard()));
                break;
              case 4:
              // Navigate to Profile screen
                Navigator.push(context, MaterialPageRoute(builder: (context) => OwnerProfile()));
                break;
            }
          },
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [


              Container(
                width: 350,
                height: 200,
                margin: EdgeInsets.all(18.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/bg.jpg"),
                    fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Stack(
                        children: [
                          Row(
                            children: [
                              Stack(
                                children: [
                                  SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset("assets/logo.png"),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(top: 60),
                                      child: Text("Al-Hammad Bank",style: TextStyle(color: Colors.white,fontSize: 12),))
                                ],
                              ),
                              SizedBox(width:160),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Stack(
                                    children: [
                                      Text("Debit",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w300,color: Colors.white),),

                                      Container(
                                          margin: EdgeInsets.only(top: 32,left: 38),
                                          child: Text("Card",style: TextStyle(color: Colors.white),)),
                                    ],
                                  ),

                                ],
                              ),//debit card text


                            ],
                          ),//logo,bankname,craditcard text
                          Container(
                            margin: EdgeInsets.only(top: 70,left: 18,),
                            height: 60,
                            width: 50,
                            child: Image.asset("assets/sim_chip.png"),
                          ), //sim chip
                          Container(
                            margin: EdgeInsets.only(top: 110),
                            child: Row(
                              children: [
                                Icon(Icons.arrow_left_sharp,size: 40,color: Colors.white,),
                                Text("6243  8699  2024  0073",style: TextStyle(fontSize: 23,color: Colors.white),)
                              ],
                            ),
                          ), //account no
                          Container(
                            margin: EdgeInsets.only(top: 150,left: 20),
                                child:Text("HAMMAD ARAIN",style: TextStyle(fontSize: 16,color: Colors.white),),
                            ),
                          Container(
                            height: 40,
                            width: 100,
                            margin: EdgeInsets.only(top: 140,left: 270),
                            child: Image.asset("assets/mastercard.png"),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    // borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(color: mainColor,width: 1)
                ),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.elliptical(180,180),bottomRight: Radius.elliptical(180,180)),
                          color: mainColor,
                      ),
                      child: Center(child: Text("Order Now",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),)),
                    ),
                    SizedBox(width: 60,),
                    Text("Rs.999",style: TextStyle(color: mainColor,fontSize: 20,fontWeight: FontWeight.w500))
                  ],
                ),

              ),
              SizedBox(height: 40,),
              Container(
                width: 350,
                height: 200,
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/gold_bg1.jpg"),
                      fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Stack(
                        children: [
                          Row(
                            children: [
                              Stack(
                                children: [
                                  SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset("assets/logo.png"),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(top: 60),
                                      child: Text("Al-Hammad Bank",style: TextStyle(color: Colors.white,fontSize: 12),))
                                ],
                              ),
                              SizedBox(width:160),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Stack(
                                    children: [
                                      Text("Debit",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w300,color: Colors.white),),

                                      Container(
                                          margin: EdgeInsets.only(top: 32,left: 38),
                                          child: Text("Card",style: TextStyle(color: Colors.white),)),
                                    ],
                                  ),

                                ],
                              ),//debit card text


                            ],
                          ),//logo,bankname,craditcard text
                          Container(
                            margin: EdgeInsets.only(top: 70,left: 18,),
                            height: 60,
                            width: 50,
                            child: Image.asset("assets/sim_chip.png"),
                          ), //sim chip
                          Container(
                            margin: EdgeInsets.only(top: 110),
                            child: Row(
                              children: [
                                Icon(Icons.arrow_left_sharp,size: 40,color: Colors.white,),
                                Text("6243  8699  2024  0073",style: TextStyle(fontSize: 23,color: Colors.white),)
                              ],
                            ),
                          ), //account no
                          Container(
                            margin: EdgeInsets.only(top: 150,left: 20),
                            child:Text("HAMMAD ARAIN",style: TextStyle(fontSize: 16,color: Colors.white),),
                          ),
                          Container(
                            height: 40,
                            width: 100,
                            margin: EdgeInsets.only(top: 140,left: 270),
                            child: Image.asset("assets/visa.png"),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(color: mainColor,width: 1)
                ),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.elliptical(180,180),bottomRight: Radius.elliptical(180,180)),
                        color: mainColor,
                      ),
                      child: Center(child: Text("Order Now",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),)),
                    ),
                    SizedBox(width: 60,),
                    Text("Rs.799",style: TextStyle(color: mainColor,fontSize: 20,fontWeight: FontWeight.w500))
                  ],
                ),

              ),
              SizedBox(height: 40,),
              Container(
                width: 350,
                height: 200,
                margin: EdgeInsets.all(18.0),
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/blue_bg.jpg"),
                      fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Stack(
                        children: [
                          Row(
                            children: [
                              Stack(
                                children: [
                                  SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset("assets/logo.png"),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(top: 60),
                                      child: Text("Al-Hammad Bank",style: TextStyle(color: Colors.white,fontSize: 12),))
                                ],
                              ),
                              SizedBox(width:160),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Stack(
                                    children: [
                                      Text("Debit",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w300,color: Colors.white),),

                                      Container(
                                          margin: EdgeInsets.only(top: 32,left: 38),
                                          child: Text("Card",style: TextStyle(color: Colors.white),)),
                                    ],
                                  ),

                                ],
                              ),//debit card text


                            ],
                          ),//logo,bankname,craditcard text
                          Container(
                            margin: EdgeInsets.only(top: 70,left: 18,),
                            height: 60,
                            width: 50,
                            child: Image.asset("assets/sim_chip.png"),
                          ), //sim chip
                          Container(
                            margin: EdgeInsets.only(top: 110),
                            child: Row(
                              children: [
                                Icon(Icons.arrow_left_sharp,size: 40,color: Colors.white,),
                                Text("6243  8699  2024  0073",style: TextStyle(fontSize: 23,color: Colors.white),)
                              ],
                            ),
                          ), //account no
                          Container(
                            margin: EdgeInsets.only(top: 150,left: 20),
                            child:Text("HAMMAD ARAIN",style: TextStyle(fontSize: 16,color: Colors.white),),
                          ),
                          Container(
                            height: 40,
                            width: 100,
                            margin: EdgeInsets.only(top: 140,left: 190),
                            child: Image.asset("assets/visa.png"),
                          ),
                          Container(
                            height: 40,
                            width: 100,
                            margin: EdgeInsets.only(top: 140,left: 270),
                            child: Image.asset("assets/mastercard.png"),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(color: mainColor,width: 1)
                ),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.elliptical(180,180),bottomRight: Radius.elliptical(180,180)),
                        color: mainColor,
                      ),
                      child: Center(child: Text("Order Now",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),)),
                    ),
                    SizedBox(width: 60,),
                    Text("Rs.1699",style: TextStyle(color: mainColor,fontSize: 20,fontWeight: FontWeight.w500))
                  ],
                ),

              ),
              SizedBox(height: 40,),
              Container(
                width: 350,
                height: 200,
                margin: EdgeInsets.all(18.0),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/d_grey_bg.jpg"),
                        fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Stack(
                        children: [
                          Row(
                            children: [
                              Stack(
                                children: [
                                  SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Image.asset("assets/logo.png"),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(top: 60),
                                      child: Text("Al-Hammad Bank",style: TextStyle(color: Colors.white,fontSize: 12),))
                                ],
                              ),
                              SizedBox(width:150),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Stack(
                                    children: [
                                      Text("Credit",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w300,color: Colors.white),),

                                      Container(
                                          margin: EdgeInsets.only(top: 32,left: 38),
                                          child: Text("Card",style: TextStyle(color: Colors.white),)),
                                    ],
                                  ),

                                ],
                              ),//debit card text


                            ],
                          ),//logo,bankname,craditcard text
                          Container(
                            margin: EdgeInsets.only(top: 70,left: 18,),
                            height: 60,
                            width: 50,
                            child: Image.asset("assets/sim_chip.png"),
                          ), //sim chip
                          Container(
                            margin: EdgeInsets.only(top: 110),
                            child: Row(
                              children: [
                                Icon(Icons.arrow_left_sharp,size: 40,color: Colors.white,),
                                Text("6243  8699  2024  0073",style: TextStyle(fontSize: 23,color: Colors.white),)
                              ],
                            ),
                          ), //account no
                          Container(
                            margin: EdgeInsets.only(top: 150,left: 20),
                            child:Text("HAMMAD ARAIN",style: TextStyle(fontSize: 16,color: Colors.white),),
                          ),
                          Container(
                            height: 40,
                            width: 100,
                            margin: EdgeInsets.only(top: 140,left: 200),
                            child: Image.asset("assets/unionPay.png"),
                          ),
                          Container(
                            height: 40,
                            width: 100,
                            margin: EdgeInsets.only(top: 140,left: 270),
                            child: Image.asset("assets/mastercard.png"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(color: mainColor,width: 1)
                ),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.elliptical(180,180),bottomRight: Radius.elliptical(180,180)),
                        color: mainColor,
                      ),
                      child: Center(child: Text("Order Now",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),)),
                    ),
                    SizedBox(width: 60,),
                    Text("Rs.1999",style: TextStyle(color: mainColor,fontSize: 20,fontWeight: FontWeight.w500))
                  ],
                ),

              ),
              SizedBox(height: 40,),


            ],
          ),
        ),

      ),
    );
  }
}



