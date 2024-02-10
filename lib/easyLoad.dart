import 'package:ah_bank/myStyle.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EasyLoad extends StatefulWidget {
  const EasyLoad({super.key});

  @override
  State<EasyLoad> createState() => _EasyLoadState();
}

class _EasyLoadState extends State<EasyLoad> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: mainColor,
        appBar: AppBar(
          backgroundColor: mainColor,
          title: Center(child: const Text("EasyLoad",style: TextStyle(color: whitColor),)),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text("Ufone",style: TextStyle(color: whitColor,fontSize: 20),),
              ),
              Tab(
                child:Text("Jazz",style: TextStyle(color: whitColor,fontSize: 20),) ,
              ),
              Tab(
                child:Text("Zong",style: TextStyle(color: whitColor,fontSize: 20),) ,
              ),
              Tab(
                child:Text("Telenor",style: TextStyle(color: whitColor,fontSize: 18),) ,
              ),
            ],
          ),
          actions: [
            const Icon(FontAwesomeIcons.magnifyingGlass,color: whitColor,),
            const SizedBox(width: 10,),
            PopupMenuButton(
              icon:  Icon(Icons.more_horiz,color: whitColor,),
              itemBuilder: (context)=> [
                PopupMenuItem(
                  // onTap: Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage())),
                    value: 1,
                    child: Text("New Group")),
                PopupMenuItem(
                    value: 2,
                    child: Text("Setting")),
                PopupMenuItem(
                    value: 3,
                    child: Text("Logout")),
              ],
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Padding(

              padding: const EdgeInsets.only(top: 20,left: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("PACKAGES",style: TextStyle(color: whitColor,fontSize: 25),),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        color: whitColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      const Padding(
                      padding: EdgeInsets.only(top: 20,left: 20,bottom: 20),
                          child: Text("UPower",style: h1,)
                      ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          const Padding(
                
                            padding: EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Internet",style: h2,),
                                Text("20GB (Flat)",style: h2,),
                              ],
                            ),
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Rs.149",style: h1,),
                                    Text("Valid for 3 day")
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text("BUY",style: TextStyle(color: whitColor,fontSize: 18,fontWeight: FontWeight.w400),)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        color: whitColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 20,left: 20,bottom: 20),
                              child: Text("Daily WhatsApp Offer",style: h1,)
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(
                
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Internet",style: h2,),
                                Text("50GB (WhatsApp)",style: h2,),
                              ],
                            ),
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Rs.50",style: h1,),
                                    Text("Valid for 1 day")
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text("BUY",style: TextStyle(color: whitColor,fontSize: 18,fontWeight: FontWeight.w400),)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        color: whitColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 20,left: 20,bottom: 20),
                              child: Text("Daily PubG",style: h1,)
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(
                
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Internet",style: h2,),
                                Text("50GB (PubG)",style: h2,),
                              ],
                            ),
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Rs.99",style: h1,),
                                    Text("Valid for 3 day")
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text("BUY",style: TextStyle(color: whitColor,fontSize: 18,fontWeight: FontWeight.w400),)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        color: whitColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 20,left: 20,bottom: 20),
                              child: Text("Daily WhatsApp Offer",style: h1,)
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(
                
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Internet",style: h2,),
                                Text("50GB (WhatsApp)",style: h2,),
                              ],
                            ),
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Rs.50",style: h1,),
                                    Text("Valid for 1 day")
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text("BUY",style: TextStyle(color: whitColor,fontSize: 18,fontWeight: FontWeight.w400),)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        color: whitColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 20,left: 20,bottom: 20),
                              child: Text("UPower Calls",style: h1,)
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(
                
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("On-net Mins",style: h2,),
                                Text("3000",style: h2,),
                              ],
                            ),
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Rs.200",style: h1,),
                                    Text("Valid for 7 day")
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text("BUY",style: TextStyle(color: whitColor,fontSize: 18,fontWeight: FontWeight.w400),)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        color: whitColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 20,left: 20,bottom: 20),
                              child: Text("Social Hero Offer",style: h1,)
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(
                
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Internet",style: h2,),
                                Text("40GB (WhatsApp & Facebook)",style: h2,),
                              ],
                            ),
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Rs.450",style: h1,),
                                    Text("Valid for 30 day")
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text("BUY",style: TextStyle(color: whitColor,fontSize: 18,fontWeight: FontWeight.w400),)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),//ufone
            Padding(

              padding: const EdgeInsets.only(top: 20,left: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("PACKAGES",style: TextStyle(color: whitColor,fontSize: 25),),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        color: whitColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                              padding: EdgeInsets.only(top: 20,left: 20,bottom: 20),
                              child: Text("Jazz 3-Day Max",style: h1,)
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          const Padding(

                            padding: EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("On-net Mins",style: h2,),
                                Text("3000",style: h2,),
                              ],
                            ),
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Rs.119",style: h1,),
                                    Text("Valid for 3 day")
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text("BUY",style: TextStyle(color: whitColor,fontSize: 18,fontWeight: FontWeight.w400),)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        color: whitColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 20,left: 20,bottom: 20),
                              child: Text("Daily WhatsApp Offer",style: h1,)
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(

                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Internet",style: h2,),
                                Text("50GB (WhatsApp)",style: h2,),
                              ],
                            ),
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Rs.50",style: h1,),
                                    Text("Valid for 1 day")
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text("BUY",style: TextStyle(color: whitColor,fontSize: 18,fontWeight: FontWeight.w400),)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        color: whitColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 20,left: 20,bottom: 20),
                              child: Text("Monthly Gaming",style: h1,)
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(

                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Internet",style: h2,),
                                Text("50GB ",style: h2,),
                              ],
                            ),
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Rs.999",style: h1,),
                                    Text("Valid for 30 day")
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text("BUY",style: TextStyle(color: whitColor,fontSize: 18,fontWeight: FontWeight.w400),)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        color: whitColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 20,left: 20,bottom: 20),
                              child: Text("Daily WhatsApp Offer",style: h1,)
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(

                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Internet",style: h2,),
                                Text("50GB (WhatsApp)",style: h2,),
                              ],
                            ),
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Rs.50",style: h1,),
                                    Text("Valid for 1 day")
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text("BUY",style: TextStyle(color: whitColor,fontSize: 18,fontWeight: FontWeight.w400),)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        color: whitColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 20,left: 20,bottom: 20),
                              child: Text("UPower Calls",style: h1,)
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(

                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("On-net Mins",style: h2,),
                                Text("3000",style: h2,),
                              ],
                            ),
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Rs.200",style: h1,),
                                    Text("Valid for 7 day")
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text("BUY",style: TextStyle(color: whitColor,fontSize: 18,fontWeight: FontWeight.w400),)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        color: whitColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 20,left: 20,bottom: 20),
                              child: Text("Social Hero Offer",style: h1,)
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(

                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Internet",style: h2,),
                                Text("40GB (WhatsApp & Facebook)",style: h2,),
                              ],
                            ),
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Rs.450",style: h1,),
                                    Text("Valid for 30 day")
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text("BUY",style: TextStyle(color: whitColor,fontSize: 18,fontWeight: FontWeight.w400),)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),//jazz
            Padding(

              padding: const EdgeInsets.only(top: 20,left: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("PACKAGES",style: TextStyle(color: whitColor,fontSize: 25),),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        color: whitColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                              padding: EdgeInsets.only(top: 20,left: 20,bottom: 20),
                              child: Text("UPower",style: h1,)
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          const Padding(

                            padding: EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Internet",style: h2,),
                                Text("20GB (Flat)",style: h2,),
                              ],
                            ),
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Rs.149",style: h1,),
                                    Text("Valid for 3 day")
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text("BUY",style: TextStyle(color: whitColor,fontSize: 18,fontWeight: FontWeight.w400),)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        color: whitColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 20,left: 20,bottom: 20),
                              child: Text("Daily WhatsApp Offer",style: h1,)
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(

                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Internet",style: h2,),
                                Text("50GB (WhatsApp)",style: h2,),
                              ],
                            ),
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Rs.50",style: h1,),
                                    Text("Valid for 1 day")
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text("BUY",style: TextStyle(color: whitColor,fontSize: 18,fontWeight: FontWeight.w400),)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        color: whitColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 20,left: 20,bottom: 20),
                              child: Text("Daily PubG",style: h1,)
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(

                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Internet",style: h2,),
                                Text("50GB (PubG)",style: h2,),
                              ],
                            ),
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Rs.99",style: h1,),
                                    Text("Valid for 3 day")
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text("BUY",style: TextStyle(color: whitColor,fontSize: 18,fontWeight: FontWeight.w400),)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        color: whitColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 20,left: 20,bottom: 20),
                              child: Text("Daily WhatsApp Offer",style: h1,)
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(

                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Internet",style: h2,),
                                Text("50GB (WhatsApp)",style: h2,),
                              ],
                            ),
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Rs.50",style: h1,),
                                    Text("Valid for 1 day")
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text("BUY",style: TextStyle(color: whitColor,fontSize: 18,fontWeight: FontWeight.w400),)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        color: whitColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 20,left: 20,bottom: 20),
                              child: Text("UPower Calls",style: h1,)
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(

                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("On-net Mins",style: h2,),
                                Text("3000",style: h2,),
                              ],
                            ),
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Rs.200",style: h1,),
                                    Text("Valid for 7 day")
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text("BUY",style: TextStyle(color: whitColor,fontSize: 18,fontWeight: FontWeight.w400),)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        color: whitColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 20,left: 20,bottom: 20),
                              child: Text("Social Hero Offer",style: h1,)
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(

                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Internet",style: h2,),
                                Text("40GB (WhatsApp & Facebook)",style: h2,),
                              ],
                            ),
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Rs.450",style: h1,),
                                    Text("Valid for 30 day")
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text("BUY",style: TextStyle(color: whitColor,fontSize: 18,fontWeight: FontWeight.w400),)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),//zong
            Padding(

              padding: const EdgeInsets.only(top: 20,left: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("PACKAGES",style: TextStyle(color: whitColor,fontSize: 25),),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        color: whitColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                              padding: EdgeInsets.only(top: 20,left: 20,bottom: 20),
                              child: Text("UPower",style: h1,)
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          const Padding(

                            padding: EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Internet",style: h2,),
                                Text("20GB (Flat)",style: h2,),
                              ],
                            ),
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Rs.149",style: h1,),
                                    Text("Valid for 3 day")
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text("BUY",style: TextStyle(color: whitColor,fontSize: 18,fontWeight: FontWeight.w400),)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        color: whitColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 20,left: 20,bottom: 20),
                              child: Text("Daily WhatsApp Offer",style: h1,)
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(

                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Internet",style: h2,),
                                Text("50GB (WhatsApp)",style: h2,),
                              ],
                            ),
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Rs.50",style: h1,),
                                    Text("Valid for 1 day")
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text("BUY",style: TextStyle(color: whitColor,fontSize: 18,fontWeight: FontWeight.w400),)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        color: whitColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 20,left: 20,bottom: 20),
                              child: Text("Daily PubG",style: h1,)
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(

                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Internet",style: h2,),
                                Text("50GB (PubG)",style: h2,),
                              ],
                            ),
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Rs.99",style: h1,),
                                    Text("Valid for 3 day")
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text("BUY",style: TextStyle(color: whitColor,fontSize: 18,fontWeight: FontWeight.w400),)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        color: whitColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 20,left: 20,bottom: 20),
                              child: Text("Daily WhatsApp Offer",style: h1,)
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(

                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Internet",style: h2,),
                                Text("50GB (WhatsApp)",style: h2,),
                              ],
                            ),
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Rs.50",style: h1,),
                                    Text("Valid for 1 day")
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text("BUY",style: TextStyle(color: whitColor,fontSize: 18,fontWeight: FontWeight.w400),)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        color: whitColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 20,left: 20,bottom: 20),
                              child: Text("UPower Calls",style: h1,)
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(

                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("On-net Mins",style: h2,),
                                Text("3000",style: h2,),
                              ],
                            ),
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Rs.200",style: h1,),
                                    Text("Valid for 7 day")
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text("BUY",style: TextStyle(color: whitColor,fontSize: 18,fontWeight: FontWeight.w400),)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                        color: whitColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 20,left: 20,bottom: 20),
                              child: Text("Social Hero Offer",style: h1,)
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(

                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Internet",style: h2,),
                                Text("40GB (WhatsApp & Facebook)",style: h2,),
                              ],
                            ),
                          ),
                          Container(
                            height: 0.3,
                            width: double.infinity,
                            color: Colors.grey,
                          ),//line
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("Rs.450",style: h1,),
                                    Text("Valid for 30 day")
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(child: Text("BUY",style: TextStyle(color: whitColor,fontSize: 18,fontWeight: FontWeight.w400),)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),//telenor
            

          ],
        ),
      ),
    );
  }
}
