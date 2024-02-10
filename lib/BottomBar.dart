import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  final GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar:CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 50,
          items: const [
            Icon(Icons.home,size: 30,),
            Icon(Icons.home,size: 30,),
            Icon(Icons.home,size: 30,),
            Icon(Icons.home,size: 30,),
            Icon(Icons.home,size: 30,),
          ],
        ),
      ),
    );
  }
}
