import 'package:flutter/material.dart';
import '../utils/app_styles.dart';
import '../widgets/profile_action_buttons.dart';


class ProfileHeader extends StatefulWidget {
  const ProfileHeader({super.key});

  @override
  State<ProfileHeader> createState() => _ProfileHeaderState();
}
class _ProfileHeaderState extends State<ProfileHeader> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color:AppColors.background,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Stack(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: AppColors.profileline,
                  child: CircleAvatar(
                    radius: 55,
                  ),
                ),
             
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 16,
                  right: 16,
                  
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile_picture.jpg'),
                  ),
                ),
             
                Positioned(
                  width: 30,
                  height: 30,
                  bottom: 0,
                  right: 16,                
                  child: buildIconButton(
                    icon: Icons.camera_alt,
                    onPressed: () {
                    },
                    backgroundColor: AppColors.iconbuttonBackground,
                    iconColor: AppColors.iconbuttonIcon,
                    size: 30,
                    iconSize: 18,
                    borderRadius: 15,
                  ),
                ),
                 
                 
              ],
             ),
           ),

          Text(
            'John Doe',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.text,
            ),
          ),
           Text(
            'Software Engineer',
            style: TextStyle(
              fontSize: 16,
              color: AppColors.secondaryText,
            ),
           ), 
          ]
        ),
      ),
    );
  }
}