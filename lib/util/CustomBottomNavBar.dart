import 'package:flutter/material.dart';

class CustomBottomNavBar extends BottomNavigationBar{
  CustomBottomNavBar(){
    BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 3,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person)
          )
        ],
        onTap: (index){
          print(index);
        }

    );
  }
}