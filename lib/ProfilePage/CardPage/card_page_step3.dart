import 'package:assm6/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../common/app_img.dart';
import 'card_page_step4.dart';

class CardPageStep3 extends StatefulWidget {
  const CardPageStep3({super.key});

  @override
  State<CardPageStep3> createState() => _CardPageStep3State();
}

class _CardPageStep3State extends State<CardPageStep3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Verify Your Card",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            const Text("We send 6 digits code to yourname@example.com"),
            const SizedBox(height: 150),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(6, (index) {
                return Container(
                  width: 30,
                  height: 2,
                  color: Colors.grey,
                );
              }),
            ),
            const SizedBox(height: 50),
            Center(
              child: RichText(
                text: const TextSpan(
                  text: "Didn't get a code? ",
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Resend',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            CustomButton(
                text: "Verify",
                isDisable: true,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CardPageStep4()),
                  );
                })
          ],
        ),
      ),
    );
  }
}
