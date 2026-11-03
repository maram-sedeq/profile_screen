import 'package:flutter/material.dart';
import '../utils/app_styles.dart';
class ProfileActionButtons extends StatefulWidget {
  const ProfileActionButtons({super.key});

  @override
  State<ProfileActionButtons> createState() => _ProfileActionButtonsState();
}
class _ProfileActionButtonsState extends State<ProfileActionButtons> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
       // padding: const EdgeInsets.all(16),
        alignment: Alignment.center,
        color:  AppColors.background,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(50, 50),
                    backgroundColor: AppColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text('Edit Profile', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            const SizedBox(width: 16),
            buildIconButton(
              icon: Icons.settings,
               onPressed: () {
            }),
            
          ],
        ),
      ),
    );
  }
}


