import 'package:flutter/material.dart';

class info_card extends StatefulWidget {
  const info_card({super.key});

  @override
  State<info_card> createState() => _info_cardState();
}
class _info_cardState extends State<info_card> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        alignment: Alignment.center,
        color: const Color.fromARGB(255, 241, 2, 2),
       
      ),
    );
  }
}