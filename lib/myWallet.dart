import 'package:ah_bank/send_money.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'atmCard.dart';
import 'calculator.dart';
import 'drawer.dart';
import 'home.dart';
import 'myStyle.dart';
import 'ownerProfile.dart';

class MyWallet extends StatefulWidget {
  const MyWallet({super.key});

  @override
  State<MyWallet> createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          title: const Center(child: Text("MY Wallet",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)),
          backgroundColor: mainColor,
          iconTheme: const IconThemeData(color: Colors.white),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_active),)
          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          key: GlobalKey(),
          index: 2,
          height: 60,
          color: mainColor,
          buttonBackgroundColor:  mainColor,
          backgroundColor: Colors.white,
          items: const [
            Icon(Icons.home, size: 30, color: Colors.white,),
            Icon(Icons.calculate_outlined, size: 30, color: Colors.white,),
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
        drawer: const MainDrawer(),

        body: ListView(
          children: [
            Container(height: 0.2,width: double.infinity,color: Colors.grey,),
            Stack(
              children: [

              Container(
              height: 150,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: mainColor,

              ),
            ),







                Padding(
                  padding: const EdgeInsets.only(top: 70,right: 20,left: 20),
                  child: Container(
                    height: 220,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: whitColor,
                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                        border: Border.all(color: mainColor,width: 1)
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("My Wallet"),
                          Text("Rs.250000.00",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                          Container(
                            height: 1,
                            width: double.infinity,
                            color: mainColor,
                          ),
                          Text("Transactions",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text("Rs. 0"),
                                  Text("Total spent")
                                ],
                              ),
                              Column(
                                children: [
                                  Text("Rs. 32650"),
                                  Text("Total income")
                                ],
                              )
                            ],
                          )



                        ],
                      ),
                    ),
                  ),
                ),//container above home balance
              ],
            )
          ],
        ),
      ),
    );
  }
}
