import 'package:assm6/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../common/app_img.dart';

class CardPageStep5 extends StatefulWidget {
  const CardPageStep5({super.key});

  @override
  State<CardPageStep5> createState() => _CardPageStep5State();
}

class _CardPageStep5State extends State<CardPageStep5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Card list",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            const Text("Enter your credit card info into the box below."),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Image.asset(
                    AppImage.iconMasterCard,
                    height: 25,
                    width: 25,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Account **********89",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 40,
                    width: 40,
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.white,
                      size: 25,
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
            const CustomButton(text: "+ Add another card")
          ],
        ),
      ),
    );
  }
}
