import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: 2,
      onTap: (index) {},
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.black,
      selectedIconTheme: const IconThemeData(color: Colors.blue),
      unselectedIconTheme: const IconThemeData(color: Colors.black),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.ac_unit),
          label: 'Prolet',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.handshake_outlined),
          label: 'Meetup',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.camera_enhance_outlined),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_2_outlined),
          label: 'Account',
        ),
      ],
    );
  }
}
