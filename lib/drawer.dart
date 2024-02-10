import 'package:ah_bank/home.dart';
import 'package:ah_bank/loginPage.dart';
import 'package:ah_bank/myStyle.dart';
import 'package:ah_bank/ownerProfile.dart';
import 'package:flutter/material.dart';


class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: mainColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                   backgroundImage: AssetImage("assets/profile.jpeg"),
                  radius: 35,
                ),
                SizedBox(height: 10),
                Text(
                  'M Hammad Arain',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize:20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Software Engineer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Profile"),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(builder: (context) => OwnerProfile()));
            },
          ),//profile
          Container(
            color: mainColor,
            height: 1,
            width: double.infinity,
          ),
          ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
              }
          ),//home
          Container(
            color: mainColor,
            height: 1,
            width: double.infinity,
          ),
          ListTile(
              leading: const Icon(Icons.star_border),
              title: const Text("Whats New"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
              }
          ),//whats new
          Container(
            color: mainColor,
            height: 1,
            width: double.infinity,
          ),
          ListTile(
              leading: const Icon(Icons.add_chart_rounded),
              title: const Text("More Services"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
              }
          ),//more services
          Container(
            color: mainColor,
            height: 1,
            width: double.infinity,
          ),
          ListTile(
              leading: const Icon(Icons.location_on),
              title: const Text("Location"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
              }
          ),//Location
          Container(
            color: mainColor,
            height: 1,
            width: double.infinity,
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: null,
          ),//Setting
          Container(
            color: mainColor,
            height: 1,
            width: double.infinity,
          ),
          const ListTile(
            leading: Icon(Icons.share),
            title: Text("Share"),
            onTap: null,
          ),//Invite Friend
          Container(
            color: mainColor,
            height: 1,
            width: double.infinity,
          ),
          const ListTile(
            leading: Icon(Icons.perm_contact_calendar_sharp),
            title: Text("About"),
            onTap: null,
          ),//Contact Us
          Container(
            color: mainColor,
            height: 1,
            width: double.infinity,
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),//logout
          Container(
            color: mainColor,
            height: 1,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
