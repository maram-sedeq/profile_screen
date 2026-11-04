import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class info_card extends StatefulWidget {
  const info_card({super.key});

  @override
  State<info_card> createState() => _info_cardState();
}

class _info_cardState extends State<info_card> {
  final List<Map<String, dynamic>> cardItem = [
    {
        'title': 'Wallet',
        'icon': buildIconButton(
            icon: Icons.account_balance_wallet,
            onPressed: () {
              // Handle wallet button press
            },
          ),
        'description': '24.500.000'
    },
    {
        'title': 'Insights',
        'icon': buildIconButton(
            icon: Icons.bar_chart,
            onPressed: () {
             
            },
          ),
        'description': '12K Views'
    }
  ];


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, 
      child: GridView.builder(
        padding: const EdgeInsets.all(10), 
        
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,     
          crossAxisSpacing: 10,  
          mainAxisSpacing: 10,   
          childAspectRatio: 1.5, 
        ),
        
        itemCount: cardItem.length, 
        
        itemBuilder: (context, index) {
          final item = cardItem[index];
          return Container(
            decoration: BoxDecoration(
              color: AppColors.cardBackground, 
              borderRadius: BorderRadius.circular(15), 
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  item['icon'],
                    
                  SizedBox(height: 5),
                  Text(
                    item['title'],
                    style: TextStyle(color: AppColors.text, fontSize: 18),
                  ),
                  SizedBox(height: 5),
                  Text(
                    item['description'],
                    style: TextStyle(color: AppColors.secondaryText, fontSize: 14),
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