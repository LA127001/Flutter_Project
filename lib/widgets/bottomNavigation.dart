// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class CustomBottomNav extends StatelessWidget {
  // final int currentIndex;
  // final Function(int) onTap;

  const CustomBottomNav({
    super.key,
    // required this.currentIndex,
    // required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: .only(
          topLeft: .circular(20),
          topRight: .circular(20)
        )
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        currentIndex: 4,
        // onTap: onTap,
        // elevation: 1,
        items: const [
          // BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: HugeIcon(icon: HugeIcons.strokeRoundedHome03), label: 'Home'),
          BottomNavigationBarItem(icon: HugeIcon(icon: HugeIcons.strokeRoundedCompass), label: 'Explore'),
          BottomNavigationBarItem(icon: HugeIcon(icon: HugeIcons.strokeRoundedFavourite), label: 'Favorites'),
          BottomNavigationBarItem(icon: HugeIcon(icon:HugeIcons.strokeRoundedBuilding03), label: 'Agents'),
          BottomNavigationBarItem(icon: HugeIcon(icon:HugeIcons.strokeRoundedUser), label: 'Profile'),
        ],
      ),
    );
  }
}