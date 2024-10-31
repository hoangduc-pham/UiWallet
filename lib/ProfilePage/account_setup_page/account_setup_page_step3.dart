import 'package:assm6/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../common/app_img.dart';
import '../../widgets/custom_text_field.dart';

class AccountSetupStep3 extends StatefulWidget {
  const AccountSetupStep3({super.key});

  @override
  State<AccountSetupStep3> createState() => _AccountSetupStep3State();
}

class _AccountSetupStep3State extends State<AccountSetupStep3> {
  String? selectedCountry = 'Việt Nam';

  final List<Map<String, String>> countryList = [
    {"name": "Việt Nam", "flag": 'assets/vietnamIcon.png'},
    {"name": "United States", "flag": 'assets/united-states.png'},
    {"name": "Brazil", "flag": 'assets/brazilIcon.png'},
    {"name": "koreaIcon", "flag": 'assets/koreaIcon.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Country of resident",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            const Text("This info needs to be accurate with your ID document."),
            const SizedBox(height: 25),
            Text(
              "Country",
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            const SizedBox(height: 8),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: selectedCountry,
                  isExpanded: true,
                  icon: Icon(Icons.arrow_drop_down),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedCountry = newValue;
                    });
                  },
                  items: countryList.map((country) {
                    return DropdownMenuItem<String>(
                      value: country['name'],
                      child: Row(
                        children: [
                          Image.asset(
                            country['flag']!,
                            width: 24,
                            height: 24,
                          ),
                          const SizedBox(width: 10),
                          Text(country['name']!),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            Spacer(),
            CustomButton(
              text: "Continue",
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const CardPageStep3()),
                // );
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
