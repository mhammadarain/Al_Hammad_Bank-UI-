import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'atmCard.dart';
import 'calculator.dart';
import 'drawer.dart';
import 'home.dart';
import 'myStyle.dart';
import 'ownerProfile.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({super.key});

  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          title: const Center(child: Text("QR Code",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ScannerPage()));
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
                  height: 310,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: mainColor,

                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.qr_code_2_sharp,size: 180,color: Colors.white,)
                    ],
                  ),
                ),







                Padding(
                  padding: const EdgeInsets.only(top: 270,right: 70,left: 70),
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                        border: Border.all(color: mainColor,width: 1)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Rs. 0.00",style: TextStyle(color: whitColor ,fontSize: 30),)

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
