import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class ProfileStatistics extends StatefulWidget {
  const ProfileStatistics({super.key});

  @override
  State<ProfileStatistics> createState() => _ProfileStatisticsState();

}
class _ProfileStatisticsState extends State<ProfileStatistics> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 16),
        alignment: Alignment.center,
        color:  AppColors.background,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               
                Column(
                  children: const [
                    Text(
                      '12.5K',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.text,
                      ),
                    ),
                  
                    Text(
                      'Followers',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.secondaryText,
                      ),
                    ),
                      SizedBox(height: 8),
                  ],
                ),
                
                buildDividerLine(),

                Column(
                  children: const [
                    Text(
                      '482',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.text,
                      ),
                    ),
                    Text(
                      'Following',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.secondaryText,
                      ),
                    ),
                    SizedBox(height: 8),
                  ],
                ),

                buildDividerLine(),

                 Column(
                  children: const [
                    Text(
                      '140',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.text,
                      ),
                    ),
                    Text(
                      'Posts',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.secondaryText,
                      ),
                    ),
                   SizedBox(height: 8),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}