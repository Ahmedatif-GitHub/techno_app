import 'package:flutter/material.dart';
import 'package:technoapp/constant/color.dart';
// import 'package:localize_and_translate/localize_and_translate.dart' as local;

BottomNavigationBar CustomBottomNavigationBar({
  final int selectedIndex = 0,
  final Function(int)? onItemTapped,
}) {
  return BottomNavigationBar(
    
    elevation: 0.0,
    backgroundColor: Colors.white,
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(
          Icons.search,
          size: 30,
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.calendar_today,
          size: 30,
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.flag,
          size: 30,
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.notifications,
          size: 30,
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          size: 30,
        ),
        label: "",
      ),
    ],
    currentIndex: selectedIndex,
    unselectedItemColor: kGrey,
    selectedItemColor: kBlue,
    onTap: onItemTapped,
    
  );
}
