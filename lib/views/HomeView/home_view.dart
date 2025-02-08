import 'package:axio_driver/core/app_colors.dart';
import 'package:axio_driver/core/theme.dart';
import 'package:axio_driver/views/HistoryView/history_page.dart';
import 'package:axio_driver/views/HomeView/home_content_page.dart';
import 'package:axio_driver/views/MapView/map_page.dart';
import 'package:axio_driver/views/ProfileView/profile_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final List<Widget> _pages = const [
    HomeContentPage(),
    MapPage(),
    HistoryPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        height: 50.h,
        color: AppColors.primaryBlue,
        backgroundColor: AppColors.backgroundColor,
        key: _bottomNavigationKey,
        items: const <Widget>[
          Icon(Icons.home_outlined, size: 30, color: Colors.white),
          Icon(Icons.map, size: 30, color: Colors.white),
          Icon(Icons.history, size: 30, color: Colors.white),
          Icon(Icons.person, size: 30, color: Colors.white),
        ],
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
    );
  }
}
