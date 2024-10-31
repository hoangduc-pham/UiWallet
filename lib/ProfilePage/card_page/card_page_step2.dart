import 'package:assm6/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../common/app_img.dart';
import '../../widgets/custom_text_field.dart';
import 'card_page_step3.dart';

class CardPageStep2 extends StatefulWidget {
  const CardPageStep2({super.key});

  @override
  State<CardPageStep2> createState() => _CardPageStep2State();
}

class _CardPageStep2State extends State<CardPageStep2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Add Card",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            const Text("Enter your card info into the box below"),
            const SizedBox(height: 15),
            const CustomTextField(
              title: 'Account Holder Name',
              hintText: "Full Name",
            ),
            const SizedBox(height: 15),
            const CustomTextField(
              title: 'Email',
              hintText: "YourName@example.com",
              iconPath: AppImage.iconMail,
              showIcon: true,
            ),
            const SizedBox(height: 15),
            const CustomTextField(
              title: 'Card Number',
              hintText: "1234 5678        MM/YY    CVV",
              iconPath: AppImage.iconMasterCard,
              showIcon: true,
            ),
            const SizedBox(height: 30),
            CustomButton(
              isDisable: true,
              text: "Verify",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CardPageStep3()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
