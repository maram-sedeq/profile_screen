import 'package:flutter/material.dart';
import 'package:profile/utils/app_styles.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
int _currentIndex = 0;

  final List<Widget> _screens = [
    const Center(child: Icon(Icons.home)),
    const Center(child: Icon(Icons.search)),
    const Center(child: Icon(Icons.add)),
    const Center(child: Icon(Icons.person),)
  ];

   @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
    
      backgroundColor: AppColors.primary,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; 
          });
        },
        selectedItemColor: AppColors.primary,  
        unselectedItemColor:AppColors.line,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
           label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
           
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.add),
           label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      );
  }

}