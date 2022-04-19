import 'package:app_tarea03_bbva/theme/app_theme.dart';
import 'package:flutter/material.dart';

class BottomNavigatorApp extends StatelessWidget {
  const BottomNavigatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // selectedLabelStyle: const TextStyle(
      //   fontSize: 11.0,
      //   color: Colors.pink,
      // ),
      // unselectedLabelStyle: const TextStyle(
      //   fontSize: 10.0,
      //   color: Colors.green,
      // ),
      selectedItemColor: AppTheme.kPrimaryColor,
      unselectedIconTheme: const IconThemeData(
        color: AppTheme.kPrimaryColor,
      ),
      //elevation: 0.0,
      //showUnselectedLabels: true,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_max_rounded),
          label: 'Home',
          //backgroundColor: AppTheme.kBackground,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.monitor_heart_outlined),
          label: 'Business',
          //backgroundColor: Colors.green,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle_outline),
          label: 'School',
          //backgroundColor: Colors.purple,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail_outline_outlined),
          label: 'User',
          //backgroundColor: Colors.pink,
        ),
      ],
      // currentIndex: 0,

      // onTap: null,
    );
  }
}
