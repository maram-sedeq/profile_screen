import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF111827);
  static const Color background = Color(0xFFF7F7F9);
  static const Color appBarBackground = Color(0xFF1A1F2C);
  static const Color text = Colors.black;
  static const Color secondaryText = Color(0xFF888888);
  static const Color iconbuttonBackground = Color.fromARGB(255, 93, 106, 138);
  static const Color iconbuttonIcon = Colors.white;
  static const Color buttonBackground = Color(0xFF1A1F2C);
  static const Color buttonText = Colors.white;
  static const Color profileline = Color.fromARGB(255, 0, 173, 17);
  static const Color line = Color(0xFF888888);
}

Widget buildDividerLine({
   width = 1, 
   height = 40,             
   color = AppColors.line,     
  double borderRadius = 1,        
}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(borderRadius),
    ),
  );
}

Widget buildIconButton({
  required IconData icon, 
  required VoidCallback onPressed,        
  Color backgroundColor = AppColors.iconbuttonBackground, 
  Color iconColor = AppColors.iconbuttonIcon, 
  double size = 35,                
  double iconSize = 22,           
  double borderRadius = 16,      
}) {
  return SizedBox(
    height: size,
    width: size,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        elevation: 0,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
    ),
  );
}