import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lee_clothing/bottom_keys/cart_page.dart';
import 'package:lee_clothing/bottom_keys/home_page.dart';
import 'package:lee_clothing/bottom_keys/profile.dart';
import 'package:lee_clothing/bottom_keys/settings.dart';

class EntryHome extends StatefulWidget {
  const EntryHome({super.key});

  @override
  State<EntryHome> createState() => _EntryHomeState();
}

class _EntryHomeState extends State<EntryHome> {

  final navigatorKey = GlobalKey<CurvedNavigationBarState>();

int bottomIndex=0;

  final List <IconData>bottomIcons=[

    Icons.home,
    Icons.shopping_cart,
  CupertinoIcons.profile_circled,
    Icons.settings,

  ];

  final bottomRoute=[
    HomePag(),
    Cart_page(),
    Profile_page(),
    Setttings(),

  ];
var contextes;
  @override
  Widget build(BuildContext context) {
    print(bottomIndex);
    return Scaffold(
      // extendBody: true,
      // bottomNavigationBar: Theme(
      //   data: Theme.of(context).copyWith(iconTheme: IconThemeData(color: primerycolor)),
      //   child: CurvedNavigationBar(
      //     animationDuration: Duration(milliseconds: 300),
      //     animationCurve: Curves.easeInOut,
      //     key: navigatorKey,
      //     color: Colors.white,
      //     backgroundColor: Colors.transparent,
      //     buttonBackgroundColor: Colors.white,
      //     items: bottomRoute,
      //     height: 60,
      //     index: bottomIndex,
      //     onTap: (index) => setState(() =>this.bottomIndex=index),
      //   ),
      // ),
      // body:bottomIcons[bottomIndex],
          floatingActionButton: FloatingActionButton(onPressed: () {  },
            //params
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


          bottomNavigationBar: AnimatedBottomNavigationBar(
            inactiveColor: primerycolor,
            icons: bottomIcons,
            activeIndex:bottomIndex ,
            gapLocation: GapLocation.center,
            notchSmoothness: NotchSmoothness.verySmoothEdge,
            leftCornerRadius: 32,
            rightCornerRadius: 32,
            onTap: (index) {
              bottomIndex = index;
              if (bottomIndex == null) {
                contextes=bottomRoute;
                print(contextes);
                setState(() {
              });
              } else {
                setState(() {
                });
              }
            }
            ),
      body: bottomRoute[bottomIndex],


        );

  }
}






