import 'package:assm6/ProfilePage/CardPage/card_page_step5.dart';
import 'package:assm6/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../common/app_img.dart';

class CardPageStep4 extends StatefulWidget {
  const CardPageStep4({super.key});

  @override
  State<CardPageStep4> createState() => _CardPageStep4State();
}

class _CardPageStep4State extends State<CardPageStep4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildContainer(isSuccessful: true),
            const SizedBox(height: 30),
            const Text("Card list",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            const Text("Enter your credit card info into the box below."),
            const SizedBox(height: 30),
            buildContainer(isSuccessful: false),
            const Spacer(),
            CustomButton(
                text: "+ Add another card",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CardPageStep5()),
                  );
                }),
            const SizedBox(height: 10),
            CustomButton(
                text: "Continue",
                isOutlineButton: true,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CardPageStep5()),
                  );
                })
          ],
        ),
      ),
    );
  }

  Container buildContainer({required bool isSuccessful}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: BoxDecoration(
        color: (isSuccessful == true) ? Colors.green[50] : Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          (isSuccessful == true)
              ? Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 20,
                  ),
                )
              : Image.asset(
                  AppImage.iconMasterCard,
                  height: 25,
                  width: 25,
                ),
          const SizedBox(width: 10),
          Text(
            (isSuccessful == true)
                ? 'Your card successfully added'
                : "Account **********89",
            style: TextStyle(
              color: (isSuccessful == true) ? Colors.green : Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
