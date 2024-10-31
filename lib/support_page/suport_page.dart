import 'package:assm6/support_page/chat_page.dart';
import 'package:flutter/material.dart';

import '../../common/app_img.dart';
import '../../widgets/custom_button.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({super.key});

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Support"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              AppImage.imageSupport,
              width: double.infinity,
            ),
            const SizedBox(height: 25),
            const Text("CoinPay Support",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            const Text(
                "Our decided team is here to assist you  with any question or issues related to our Coinpay mobile app",
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ChatScreen()),
                );
              },
              child: const CustomButton(
                showIcon: true,
                iconPath: Icons.account_tree,
                text: "Start chat",
              ),
            ),
            const SizedBox(height: 10),
            const CustomButton(
              showIcon: true,
              text: "View FAQ",
              isOutlineButton: true,
              iconPath: Icons.add_call,
            ),
          ],
        ),
      ),
    );
  }
}
