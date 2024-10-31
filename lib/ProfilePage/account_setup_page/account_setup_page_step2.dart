import 'package:assm6/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../common/app_img.dart';
import '../../widgets/custom_text_field.dart';
import 'account_setup_page_step3.dart';

class AccountSetupStep2 extends StatefulWidget {
  const AccountSetupStep2({super.key});

  @override
  State<AccountSetupStep2> createState() => _AccountSetupStep2State();
}

class _AccountSetupStep2State extends State<AccountSetupStep2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Home address",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            const Text("This info needs to be accurate with your ID document."),
            const SizedBox(height: 25),
            const CustomTextField(
              title: 'Address Line',
              hintText: "Mr.Jhon Doe",
            ),
            const SizedBox(height: 15),
            const CustomTextField(
              title: 'City',
              hintText: "City, State",
            ),
            const SizedBox(height: 15),
            const CustomTextField(
              title: 'Postcode',
              hintText: "Ex: 00000    ",
            ),
            const Spacer(),
            CustomButton(
              isDisable: true,
              text: "Continue",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AccountSetupStep3()),
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
