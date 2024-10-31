import 'package:flutter/material.dart';

import '../../common/app_img.dart';
import '../../widgets/custom_button.dart';
import 'card_page_step2.dart';

class CardPageStep1 extends StatefulWidget {
  const CardPageStep1({super.key});

  @override
  State<CardPageStep1> createState() => _CardPageStep1State();
}

class _CardPageStep1State extends State<CardPageStep1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              AppImage.imageAddCard,
              width: double.infinity,
            ),
            const SizedBox(height: 25),
            const Text("Let's add your card",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            const Text("Experience the power of financial organization with our platform",
                style: TextStyle(fontSize: 15), textAlign: TextAlign.center),
            const Spacer(),
            CustomButton(
              text: "+ Add Your Card", 
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CardPageStep2()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
