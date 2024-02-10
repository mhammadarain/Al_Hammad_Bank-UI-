import 'package:ah_bank/atmCard.dart';
import 'package:ah_bank/billPayment.dart';
import 'package:ah_bank/calculator.dart';
import 'package:ah_bank/easyLoad.dart';
import 'package:ah_bank/homeBalance.dart';
import 'package:ah_bank/myWallet.dart';
import 'package:ah_bank/ownerProfile.dart';
import 'package:ah_bank/scannerPage.dart';
import 'package:ah_bank/send_money.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';
import 'myStyle.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

          appBar: AppBar(
            title: const Center(child: Text("Al-Hammad Bank",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)),
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

                  const HomeBalance(),
                  Padding(
                    padding: const EdgeInsets.only(top: 140,right: 20,left: 20),
                    child: Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xfff6f8f8),
                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                        border: Border.all(color: mainColor,width: 1)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: const BoxDecoration(
                                    color: mainColor,
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  child: IconButton(
                                    icon: const Icon(Icons.send_to_mobile_outlined,color: Colors.white,),
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SendMoney()));
                                    },
                                  )
                                ),
                                const SizedBox(height: 2,),
                                const Text("Send Money")
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: const BoxDecoration(
                                      color: mainColor,
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  child: IconButton(
                                    icon: const Icon(Icons.account_balance_wallet_outlined,color: Colors.white,),
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyWallet()));
                                    },
                                  )
                                ),
                                const SizedBox(height: 2,),
                                const Text("My Wallet"),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: const BoxDecoration(
                                      color: mainColor,
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  child: IconButton(
                                    icon: const Icon(Icons.ballot_outlined,color: Colors.white,),
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const BillPayment()));
                                    },
                                  ),
                                ),
                                const SizedBox(height: 2,),
                                const Text("Bill Payments")
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: const BoxDecoration(
                                      color: mainColor,
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  child: IconButton(
                                    icon: const Icon(Icons.mobile_friendly_sharp,color: Colors.white,),
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const EasyLoad()));
                                    },
                                  )
                                ),
                                const SizedBox(height: 2,),
                                const Text("Packages")
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),//container above home balance


                  Padding(
                    padding: const EdgeInsets.only(top: 227,left: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(

                        children: [
                          Container(
                            width: 350,
                            height: 200,
                            margin: const EdgeInsets.all(8.0),
                            decoration: const BoxDecoration(
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
                                                  margin: const EdgeInsets.only(top: 60),
                                                  child: const Text("Al-Hammad Bank",style: TextStyle(color: Colors.white,fontSize: 12),))
                                            ],
                                          ),
                                          const SizedBox(width:160),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Stack(
                                                children: [
                                                  const Text("Debit",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w300,color: Colors.white),),

                                                  Container(
                                                      margin: const EdgeInsets.only(top: 32,left: 38),
                                                      child: const Text("Card",style: TextStyle(color: Colors.white),)),
                                                ],
                                              ),

                                            ],
                                          ),//debit card text


                                        ],
                                      ),//logo,bankname,craditcard text
                                      Container(
                                        margin: const EdgeInsets.only(top: 70,left: 18,),
                                        height: 60,
                                        width: 50,
                                        child: Image.asset("assets/sim_chip.png"),
                                      ), //sim chip
                                      Container(
                                        margin: const EdgeInsets.only(top: 110),
                                        child: const Row(
                                          children: [
                                            Icon(Icons.arrow_left_sharp,size: 40,color: Colors.white,),
                                            Text("6243  8699  2024  0073",style: TextStyle(fontSize: 23,color: Colors.white),)
                                          ],
                                        ),
                                      ), //account no
                                      Container(
                                        margin: const EdgeInsets.only(top: 150,left: 20),
                                        child:const Text("HAMMAD ARAIN",style: TextStyle(fontSize: 16,color: Colors.white),),
                                      ),
                                      Container(
                                        height: 40,
                                        width: 100,
                                        margin: const EdgeInsets.only(top: 140,left: 270),
                                        child: Image.asset("assets/mastercard.png"),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 200,
                            margin: const EdgeInsets.all(8.0),
                            decoration: const BoxDecoration(
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
                                                  margin: const EdgeInsets.only(top: 60),
                                                  child: const Text("Al-Hammad Bank",style: TextStyle(color: Colors.white,fontSize: 12),))
                                            ],
                                          ),
                                          const SizedBox(width:160),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Stack(
                                                children: [
                                                  const Text("Debit",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w300,color: Colors.white),),

                                                  Container(
                                                      margin: const EdgeInsets.only(top: 32,left: 38),
                                                      child: const Text("Card",style: TextStyle(color: Colors.white),)),
                                                ],
                                              ),

                                            ],
                                          ),//debit card text


                                        ],
                                      ),//logo,bankname,craditcard text
                                      Container(
                                        margin: const EdgeInsets.only(top: 70,left: 18,),
                                        height: 60,
                                        width: 50,
                                        child: Image.asset("assets/sim_chip.png"),
                                      ), //sim chip
                                      Container(
                                        margin: const EdgeInsets.only(top: 110),
                                        child: const Row(
                                          children: [
                                            Icon(Icons.arrow_left_sharp,size: 40,color: Colors.white,),
                                            Text("6243  8699  2024  0073",style: TextStyle(fontSize: 23,color: Colors.white),)
                                          ],
                                        ),
                                      ), //account no
                                      Container(
                                        margin: const EdgeInsets.only(top: 150,left: 20),
                                        child:const Text("HAMMAD ARAIN",style: TextStyle(fontSize: 16,color: Colors.white),),
                                      ),
                                      Container(
                                        height: 40,
                                        width: 100,
                                        margin: const EdgeInsets.only(top: 140,left: 270),
                                        child: Image.asset("assets/visa.png"),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 200,
                            margin: const EdgeInsets.all(8.0),
                            decoration: const BoxDecoration(
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
                                                  margin: const EdgeInsets.only(top: 60),
                                                  child: const Text("Al-Hammad Bank",style: TextStyle(color: Colors.white,fontSize: 12),))
                                            ],
                                          ),
                                          const SizedBox(width:160),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Stack(
                                                children: [
                                                  const Text("Debit",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w300,color: Colors.white),),

                                                  Container(
                                                      margin: const EdgeInsets.only(top: 32,left: 38),
                                                      child: const Text("Card",style: TextStyle(color: Colors.white),)),
                                                ],
                                              ),

                                            ],
                                          ),//debit card text


                                        ],
                                      ),//logo,bankname,craditcard text
                                      Container(
                                        margin: const EdgeInsets.only(top: 70,left: 18,),
                                        height: 60,
                                        width: 50,
                                        child: Image.asset("assets/sim_chip.png"),
                                      ), //sim chip
                                      Container(
                                        margin: const EdgeInsets.only(top: 110),
                                        child: const Row(
                                          children: [
                                            Icon(Icons.arrow_left_sharp,size: 40,color: Colors.white,),
                                            Text("6243  8699  2024  0073",style: TextStyle(fontSize: 23,color: Colors.white),)
                                          ],
                                        ),
                                      ), //account no
                                      Container(
                                        margin: const EdgeInsets.only(top: 150,left: 20),
                                        child:const Text("HAMMAD ARAIN",style: TextStyle(fontSize: 16,color: Colors.white),),
                                      ),
                                      Container(
                                        height: 40,
                                        width: 100,
                                        margin: const EdgeInsets.only(top: 140,left: 190),
                                        child: Image.asset("assets/visa.png"),
                                      ),
                                      Container(
                                        height: 40,
                                        width: 100,
                                        margin: const EdgeInsets.only(top: 140,left: 270),
                                        child: Image.asset("assets/mastercard.png"),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 200,
                            margin: const EdgeInsets.all(8.0),
                            decoration: const BoxDecoration(
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
                                                  margin: const EdgeInsets.only(top: 60),
                                                  child: const Text("Al-Hammad Bank",style: TextStyle(color: Colors.white,fontSize: 12),))
                                            ],
                                          ),
                                          const SizedBox(width:150),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Stack(
                                                children: [
                                                  const Text("Credit",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w300,color: Colors.white),),

                                                  Container(
                                                      margin: const EdgeInsets.only(top: 32,left: 38),
                                                      child: const Text("Card",style: TextStyle(color: Colors.white),)),
                                                ],
                                              ),

                                            ],
                                          ),//debit card text


                                        ],
                                      ),//logo,bankname,craditcard text
                                      Container(
                                        margin: const EdgeInsets.only(top: 70,left: 18,),
                                        height: 60,
                                        width: 50,
                                        child: Image.asset("assets/sim_chip.png"),
                                      ), //sim chip
                                      Container(
                                        margin: const EdgeInsets.only(top: 110),
                                        child: const Row(
                                          children: [
                                            Icon(Icons.arrow_left_sharp,size: 40,color: Colors.white,),
                                            Text("6243  8699  2024  0073",style: TextStyle(fontSize: 23,color: Colors.white),)
                                          ],
                                        ),
                                      ), //account no
                                      Container(
                                        margin: const EdgeInsets.only(top: 150,left: 20),
                                        child:const Text("HAMMAD ARAIN",style: TextStyle(fontSize: 16,color: Colors.white),),
                                      ),
                                      Container(
                                        height: 40,
                                        width: 100,
                                        margin: const EdgeInsets.only(top: 140,left: 200),
                                        child: Image.asset("assets/unionPay.png"),
                                      ),
                                      Container(
                                        height: 40,
                                        width: 100,
                                        margin: const EdgeInsets.only(top: 140,left: 270),
                                        child: Image.asset("assets/mastercard.png"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),//ATM Cards


                  Padding(
                    padding: const EdgeInsets.only(top: 450,right: 20,left: 20),
                    child: Container(
                      height: 240,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color(0xfff6f8f8),
                          borderRadius: const BorderRadius.all(Radius.circular(15)),
                          border: Border.all(color: mainColor,width: 0.3)
                      ),

                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                            // color: Colors.white,
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: const Icon(Icons.redeem_sharp,color: mainColor,),
                                      ),
                                      const SizedBox(height: 2,),
                                      const Text("Savings")
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                            // color: mainColor,
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: const Icon(Icons.mobile_screen_share,color: mainColor,),
                                      ),
                                      const SizedBox(height: 2,),
                                      const Text("Mini App")
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                            // color: mainColor,
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: const Icon(Icons.important_devices,color: mainColor,),
                                      ),
                                      const SizedBox(height: 2,),
                                      const Text("Raast Id")
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                            // color: mainColor,
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: const Icon(Icons.airplane_ticket_outlined,color: mainColor,),
                                      ),
                                      const SizedBox(height: 2,),
                                      const Text("Ticketing")
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                          // color: Colors.white,
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: const Icon(Icons.cabin_outlined,color: mainColor,),
                                      ),
                                      const SizedBox(height: 2,),
                                      const Text("Housing")
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                          // color: mainColor,
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: const Icon(Icons.account_balance,color: mainColor,),
                                      ),
                                      const SizedBox(height: 2,),
                                      const Text("Other Banks")
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                          // color: mainColor,
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: const Icon(Icons.save_alt_outlined,color: mainColor,),
                                      ),
                                      const SizedBox(height: 2,),
                                      const Text("Donations")
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                          // color: mainColor,
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: const Icon(Icons.cast_for_education,color: mainColor,),
                                      ),
                                      const SizedBox(height: 2,),
                                      const Text("Education")
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                          // color: Colors.white,
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: const Icon(Icons.wb_incandescent_outlined,color: mainColor,),
                                      ),
                                      const SizedBox(height: 2,),
                                      const Text("Electricity")
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                          // color: mainColor,
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: const Icon(Icons.local_fire_department_outlined,color: mainColor,),
                                      ),
                                      const SizedBox(height: 2,),
                                      const Text("Gas Bill")
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                          // color: mainColor,
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: const Icon(Icons.water,color: mainColor,),
                                      ),
                                      const SizedBox(height: 2,),
                                      const Text("Water Bill")
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                          // color: mainColor,
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: const Icon(Icons.signal_wifi_statusbar_null_outlined,color: mainColor,),
                                      ),
                                      const SizedBox(height: 2,),
                                      const Text("Internet")
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                          // color: Colors.white,
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: const Icon(Icons.healing,color: mainColor,),
                                      ),
                                      const SizedBox(height: 2,),
                                      const Text("Insurance")
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                          // color: mainColor,
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: const Icon(Icons.heart_broken_outlined,color: mainColor,),
                                      ),
                                      const SizedBox(height: 2,),
                                      const Text("Health")
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                          // color: mainColor,
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: const Icon(Icons.health_and_safety_outlined,color: mainColor,),
                                      ),
                                      const SizedBox(height: 2,),
                                      const Text("Protection")
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                          // color: mainColor,
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: const Icon(Icons.yard_outlined,color: mainColor,),
                                      ),
                                      const SizedBox(height: 2,),
                                      const Text("Faimly")
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                          // color: Colors.white,
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: const Icon(Icons.send_to_mobile_outlined,color: mainColor,),
                                      ),
                                      const SizedBox(height: 2,),
                                      const Text("E-Payment")
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                          // color: mainColor,
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: const Icon(Icons.account_balance_wallet_outlined,color: mainColor,),
                                      ),
                                      const SizedBox(height: 2,),
                                      const Text("Investments")
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                          // color: mainColor,
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: const Icon(Icons.ballot_outlined,color: mainColor,),
                                      ),
                                      const SizedBox(height: 2,),
                                      const Text("ATM Card")
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                          // color: mainColor,
                                            borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: const Icon(Icons.mobile_friendly_sharp,color: mainColor,),
                                      ),
                                      const SizedBox(height: 2,),
                                      const Text("Packages")
                                    ],
                                  ),
                                ],
                              ),
                            ),
                        
                          ],
                        ),
                      ),
                    ),
                  ),//container Five Row



                ],
              )
            ],
          ),
        ),
    );
  }
}
