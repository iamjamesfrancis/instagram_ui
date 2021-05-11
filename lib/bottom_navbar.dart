import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/values.dart';

BottomNavigationBar buildBottomNavigationBar() {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    currentIndex: 2,
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('')),
      BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('')),
      BottomNavigationBarItem(
          icon: Image.asset(
            reels,
            height: 25,
          ),
          title: Text(' ')),
      BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border), title: Text('')),
      BottomNavigationBarItem(
          icon: CircleAvatar(
            radius: 17,
            backgroundImage: AssetImage(profile_1),
          ),
          title: Text(' ')),
    ],
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.black,
    iconSize: 30.0,
  );
}
