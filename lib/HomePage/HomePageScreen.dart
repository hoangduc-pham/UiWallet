import 'package:flutter/material.dart';

import '../ProfilePage/ProfilePageScreen.dart';
import '../common/app_img.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? selectedValue;

  final List<Map<String, String>> items = [
    {"icon": "assets/vietnamIcon.png", "text": "Việt Nam"},
    {"icon": "assets/koreaIcon.png", "text": "Hàn Quốc"},
    {"icon": "assets/brazilIcon.png", "text": "Brazil"},
    {"icon": "assets/united-states.png", "text": "Hoa Kì"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(alignment: Alignment.topCenter, children: [
      Container(
          color: const Color(0xFF304FFF),
          width: double.infinity,
          height: 350,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      AppImage.iconChampion,
                      height: 25,
                      width: 25,
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 0),
                          constraints: const BoxConstraints(
                            maxHeight: 40,
                            maxWidth: 200,
                          ),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 20,
                          ),
                          hintText: 'Search payments',
                          hintStyle: const TextStyle(
                            color: Colors.white,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          // fillColor: const Color(0xFF778BFE),
                          fillColor: const Color(0xFF778BFE),
                        ),
                      )),
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      AppImage.iconBell,
                      height: 25,
                      width: 25,
                    ),
                  ),
                ]),
              ),
              const SizedBox(height: 15),
              DropdownButton<String>(
                alignment: Alignment.center,
                dropdownColor: Colors.blueGrey,
                hint: const Text("Chọn quốc gia"),
                style: const TextStyle(color: Colors.white),
                value: selectedValue,
                icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
                underline: const SizedBox(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue = newValue;
                  });
                },
                items: items.map((Map<String, String> item) {
                  return DropdownMenuItem<String>(
                    value: item['text'],
                    child: Row(
                      children: [
                        // Hiển thị icon
                        Image.asset(
                          item['icon']!,
                          height: 24,
                          width: 24,
                        ),
                        const SizedBox(width: 8),
                        Text(item['text']!),
                      ],
                    ),
                  );
                }).toList(),
              ),
              const Text(
                "\$20,000",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white),
              ),
              const Text(
                "Available Balance",
                style: TextStyle(fontSize: 15, color: Colors.white60),
              ),
              const SizedBox(height: 15),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  side: const BorderSide(color: Colors.white, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      AppImage.iconWallet,
                      height: 15,
                      width: 15,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Add Money',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          )),
      Padding(
        padding: const EdgeInsets.only(top: 310),
        child: Container(
          width: 350,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 15, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _columnCard(text: "Send", imagePath: AppImage.iconMoney),
                VerticalDivider(
                  color: Colors.grey.shade300,
                  thickness: 1,
                  endIndent: 10,
                ),
                _columnCard(text: "Request", imagePath: AppImage.iconRequest),
                VerticalDivider(
                  color: Colors.grey.shade300,
                  thickness: 1,
                  endIndent: 10,
                ),
                _columnCard(text: "Bank", imagePath: AppImage.iconBank),
              ],
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 400, left: 15, right: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Transaction", style: TextStyle(fontSize: 20)),
                Image.asset(
                  AppImage.iconNext,
                  height: 20,
                  width: 20,
                ),
              ],
            ),
            Container(
              width: 350,
              height: 310,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildPadding(
                        imagePath: AppImage.iconSpending,
                        colorCircle: Colors.lightGreen,
                        text: "Spending",
                        textMoney: "-\$500",
                        colorTextMoney: Colors.red),
                    buildDivider(),
                    _buildPadding(
                        imagePath: AppImage.iconSalary,
                        colorCircle: Colors.blueGrey,
                        text: "Income",
                        textMoney: "\$3000",
                        colorTextMoney: Colors.green),
                    buildDivider(),
                    _buildPadding(
                        imagePath: AppImage.iconInvoice,
                        colorCircle: Colors.amber,
                        text: "Bills",
                        textMoney: "-\$800",
                        colorTextMoney: Colors.red),
                    buildDivider(),
                    _buildPadding(
                        imagePath: AppImage.iconSave,
                        colorCircle: Colors.amber,
                        text: "Savings",
                        textMoney: "\$1000",
                        colorTextMoney: Colors.amber),
                    buildDivider(),
                    _buildPadding(
                        imagePath: AppImage.iconSave,
                        colorCircle: Colors.amber,
                        text: "Savings",
                        textMoney: "\$1000",
                        colorTextMoney: Colors.amber),
                    buildDivider(),
                    _buildPadding(
                        imagePath: AppImage.iconSave,
                        colorCircle: Colors.amber,
                        text: "Savings",
                        textMoney: "\$1000",
                        colorTextMoney: Colors.amber),
                    buildDivider(),
                    _buildPadding(
                        imagePath: AppImage.iconSave,
                        colorCircle: Colors.amber,
                        text: "Savings",
                        textMoney: "\$1000",
                        colorTextMoney: Colors.amber),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              width: 350,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    AppImage.iconHome,
                    height: 25,
                    width: 25,
                  ),
                  Image.asset(
                    AppImage.iconChart,
                    height: 25,
                    width: 25,
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.indigo, // Màu nền của Container
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset(
                        AppImage.iconQr,
                        height: 25,
                        width: 25,
                      ),
                    ),
                  ),
                  Image.asset(
                    AppImage.iconMessage,
                    height: 25,
                    width: 25,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ProfilePage()),
                      );
                    },
                    child: Image.asset(
                      AppImage.iconUserNoColor,
                      height: 25,
                      width: 25,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    ])));
  }

  SizedBox buildDivider() {
    return const SizedBox(
      width: 300,
      child: Divider(
        color: Color(0xFFBDBDBD),
        thickness: 1,
      ),
    );
  }

  Padding _buildPadding(
      {required String imagePath,
      required colorCircle,
      required String text,
      required textMoney,
      required colorTextMoney}) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: colorCircle,
                    child: Image.asset(
                      imagePath,
                      height: 25,
                      width: 25,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(text),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(textMoney, style: TextStyle(color: colorTextMoney, fontSize: 20)),
                  const SizedBox(width: 10),
                  Image.asset(
                    AppImage.iconNext2,
                    height: 10,
                    width: 10,
                  ),
                ],
              )
            ]),
      ),
    );
  }

  Widget _columnCard({required String text, required String imagePath}) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          height: 25,
          width: 25,
        ),
        Text(text)
      ],
    );
  }
}
