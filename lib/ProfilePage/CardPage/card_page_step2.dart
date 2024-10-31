import 'package:assm6/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../common/app_img.dart';
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
            textFieldCustom(
              title: 'Account Holder Name',
              hintText: "Full Name",
            ),
            const SizedBox(height: 15),
            textFieldCustom(
              title: 'Email',
              hintText: "YourName@example.com",
              iconPath: AppImage.iconMail,
              showIcon: true,
            ),
            const SizedBox(height: 15),
            textFieldCustom(
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

  Column textFieldCustom(
      {required String title,
      required String hintText,
      String? iconPath,
      bool showIcon = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black54,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            prefixIcon: iconPath != null && showIcon
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      iconPath,
                      height: 25,
                      width: 25,
                    ),
                  )
                : null,
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey[400],
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 15.0,
              horizontal: 15.0,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 1.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                color: Colors.blue,
                width: 1.0,
              ),
            ),
            filled: true,
            fillColor: Colors.grey[100],
          ),
        ),
      ],
    );
  }
}
