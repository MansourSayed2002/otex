import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otex/core/constants/image_app.dart';
import 'package:otex/core/constants/text_app.dart';
import 'package:otex/core/theme/color_app.dart';
import 'package:otex/core/theme/textstyle_app.dart';
import 'package:otex/features/home/presentation/screen/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  List screen = [
    HomeScreen(),
    Center(child: Text("chat")),
    Center(child: Text("add")),
    Center(child: Text("chat")),
    Center(child: Text("profile")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorApp.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: ColorApp.charcoal,
        unselectedItemColor: ColorApp.charcoal,
        unselectedLabelStyle: getSmallStyle(color: ColorApp.charcoal),
        selectedLabelStyle: getSmallStyle(color: ColorApp.charcoal),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(IconApp.bungalow),
            label: TextApp.home,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(IconApp.chat),
            label: TextApp.chat,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined, color: ColorApp.darkblue),
            label: TextApp.add,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(IconApp.dataset),
            label: TextApp.my,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(IconApp.account),
            label: TextApp.myAccount,
          ),
        ],
      ),
    );
  }
}
