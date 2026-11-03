import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class info_card extends StatefulWidget {
  const info_card({super.key});

  @override
  State<info_card> createState() => _info_cardState();
}

class _info_cardState extends State<info_card> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // حدد ارتفاعاً مناسباً للشبكة (أو استخدم shrinkWrap: true إذا كانت داخل Column)
      child: GridView.builder(
        padding: const EdgeInsets.all(10), 
        
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,     
          crossAxisSpacing: 10,  
          mainAxisSpacing: 10,   
          childAspectRatio: 1.5, 
        ),
        
        itemCount: 2, 
        
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: AppColors.primary, 
              borderRadius: BorderRadius.circular(15), 
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildIconButton(
                    icon: Icons.info,
                    onPressed: () {
                    },
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Info Card',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Details here',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}