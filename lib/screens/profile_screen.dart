import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_statistics.dart';
import '../widgets/profile_action_buttons.dart';
import '../utils/app_styles.dart';
import '../widgets/info_card.dart';
import '../widgets/activity_item.dart';
import '../widgets/bottom_navigation.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      actionsPadding: const EdgeInsets.symmetric(horizontal: 10),

      leading:
      Padding(
    padding: const EdgeInsets.all(8.0), 
    child: buildIconButton(

      icon: Icons.arrow_back,
      onPressed: () {
      },

    ),
  ),
      actions: [
          buildIconButton(
            icon: Icons.share,
            onPressed: () {
            },
          ),
          SizedBox(width: 8),
          buildIconButton(
            icon: Icons.more_horiz,
            onPressed: () {
            },
          ),
        ],
      backgroundColor: AppColors.appBarBackground,
      ),
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),

            child: Column(
              children: [
                const ProfileHeader(),
                const ProfileStatistics(),
                const ProfileActionButtons(),
                const info_card(),
                Padding(
                  padding: const EdgeInsets.only(left:20,right:300, bottom: 8.0),          
                  child: buildHeaderText('Recent Activities'),
                ),
               const ActivityItem(),
              
              ],
            ),
          ),
        ),
      ),


         bottomNavigationBar: const BottomNavigation(),
    );
  }
}
