import 'package:flutter/material.dart';

import '../common/app_img.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 350,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Spacer(),
                        Image.asset(
                          AppImage.iconEdit,
                          width: 25,
                          height: 25,
                        ),
                      ],
                    ),
                  ),
                  ClipOval(
                    child: Image.asset(
                      AppImage.iconAvatar,
                      width: 65,
                      height: 65,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Text("Phạm Đức Hoàng",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                  const Text("hoangPD15@gmail.com",
                      style: TextStyle(fontSize: 14, color: Colors.grey)),
                  const Text("0829955331",
                      style: TextStyle(fontSize: 14, color: Colors.grey))
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 350,
              height: 450,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildPadding(
                        imagePath: AppImage.iconNightMode,
                        colorCircle: Colors.grey,
                        text: "Dark Mode",
                        isDarkMode: true),
                    buildDivider(),
                    _buildPadding(
                        imagePath: AppImage.iconUser,
                        colorCircle: Colors.indigo.shade200,
                        text: "Personal Info"),
                    buildDivider(),
                    _buildPadding(
                        imagePath: AppImage.iconBank,
                        colorCircle: Colors.amber.shade200,
                        text: "Bank & Card"),
                    buildDivider(),
                    _buildPadding(
                      imagePath: AppImage.iconTransaction,
                      colorCircle: Colors.deepOrangeAccent,
                      text: "Transaction",
                    ),
                    buildDivider(),
                    _buildPadding(
                        imagePath: AppImage.iconSetting,
                        colorCircle: Colors.indigo.shade200,
                        text: "Settings"),
                    buildDivider(),
                    _buildPadding(
                      imagePath: AppImage.iconDatabase,
                      colorCircle: Colors.green.shade200,
                      text: "Data Privacy",
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 350,
              height: 60,
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
                  Image.asset(
                    AppImage.iconUserNoColor,
                    height: 25,
                    width: 25,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
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
      bool? isDarkMode}) {
    bool isSwitched = false;
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
                    height: 20,
                    width: 20,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  text,
                  style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
              ],
            ),
            (isDarkMode == true)
                ? Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                    activeColor: Colors.green,
                    inactiveThumbColor: Colors.grey,
                  )
                : Image.asset(
                    AppImage.iconNext2,
                    height: 15,
                    width: 15,
                  ),
          ],
        ),
      ),
    );
  }
}
