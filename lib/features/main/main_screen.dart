import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otex/core/constants/image_app.dart';
import 'package:otex/core/constants/text_app.dart';
import 'package:otex/core/extension/navigator_app.dart';
import 'package:otex/core/theme/color_app.dart';
import 'package:otex/core/theme/textstyle_app.dart';
import 'package:otex/features/add_advertisement/presentation/screen/advertisemet_screen.dart';
import 'package:otex/features/home/presentation/screen/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  List<Widget> screen = [
    HomeScreen(),
    Center(child: Text("chat")),
    SizedBox(),
    Center(child: Text("myadvertisement")),
    Center(child: Text("Account")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: screen),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value == 2) {
            context.push(AddAdvertisementScreen());
          } else {
            setState(() {
              currentIndex = value;
            });
          }
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorApp.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: ColorApp.charcoal,
        unselectedItemColor: ColorApp.charcoal.withAlpha(80),
        unselectedLabelStyle: getSmallStyle(color: ColorApp.charcoal),
        selectedLabelStyle: getSmallStyle(color: ColorApp.charcoal),
        items: [
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(IconApp.bungalow),
            icon: SvgPicture.asset(
              IconApp.bungalow,
              colorFilter: ColorFilter.mode(
                ColorApp.charcoal.withAlpha(90),
                BlendMode.srcIn,
              ),
            ),
            label: TextApp.home,
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              IconApp.chat,
              colorFilter: ColorFilter.mode(
                ColorApp.charcoal,
                BlendMode.modulate,
              ),
            ),
            icon: SvgPicture.asset(IconApp.chat),
            label: TextApp.chat,
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.add_box_outlined, color: ColorApp.darkblue),
            icon: Icon(Icons.add_box_outlined, color: ColorApp.darkblue),
            label: TextApp.add,
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(IconApp.dataset),
            icon: SvgPicture.asset(IconApp.dataset),
            label: TextApp.my,
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(IconApp.account),
            icon: SvgPicture.asset(IconApp.account),
            label: TextApp.myAccount,
          ),
        ],
      ),
    );
  }
}
