import 'package:flutter/material.dart';

import '../../common/app_img.dart';
import '../../widgets/custom_button.dart';

class SpendingPage extends StatefulWidget {
  const SpendingPage({super.key});

  @override
  State<SpendingPage> createState() => _SpendingPageState();
}

class _SpendingPageState extends State<SpendingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Spending"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color(0xffEAEBFF),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("January", style: TextStyle(fontSize: 20)),
                    const SizedBox(width: 5),
                    Image.asset(
                      AppImage.iconDown,
                      width: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildCard(isTotal: true),
                  const SizedBox(width: 16),
                  buildCard(isTotal: false),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: 200,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildColumnChart(
                        title: "2-8", height: 100, textPrice: "\$100", isTotal: true),
                    buildColumnChart(
                      title: "9-15",
                      height: 60,
                      textPrice: "\$100",
                    ),
                    buildColumnChart(
                        title: "16-22", height: 100, textPrice: "\$100", isTotal: true),
                    buildColumnChart(
                      title: "23-29",
                      height: 30,
                      textPrice: "\$100",
                    ),
                    buildColumnChart(
                        title: "30-100", height: 50, textPrice: "\$100", isTotal: true),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 100,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildColumnItem(
                      title: "Spending",
                      imagePath: AppImage.iconSpending,
                      colorCircle: Colors.lightGreen,
                    ),
                    buildColumnItem(
                      imagePath: AppImage.iconSalary,
                      colorCircle: Colors.blueGrey,
                      title: "Income",
                    ),
                    buildColumnItem(
                      imagePath: AppImage.iconInvoice,
                      colorCircle: Colors.amber,
                      title: "Bills",
                    ),
                    buildColumnItem(
                      imagePath: AppImage.iconSave,
                      colorCircle: Colors.amber,
                      title: "Savings",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text("Spending list", style: TextStyle(fontSize: 20)),
                  const Spacer(),
                  Image.asset(
                    AppImage.iconArrange,
                    height: 35,
                  )
                ],
              ),
              buildRowItem(
                imagePath: AppImage.iconGg,
                name: "Google",
                time: "1st Jan at 1:20pm",
                price: "-\$200.99",
              ),
              buildDivider(),
              buildRowItem(
                imagePath: AppImage.iconFb,
                name: "Facebook",
                time: "1st Jan at 8:20pm",
                price: "-\$1000",
              ),
              buildDivider(),
              buildRowItem(
                imagePath: AppImage.iconYt,
                name: "Youtube",
                time: "1st Jan at 7:20pm",
                price: "-\$15.99",
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox buildDivider() {
    return const SizedBox(
      width: 400,
      child: Divider(
        color: Color(0xFFBDBDBD),
        thickness: 1,
      ),
    );
  }

  Row buildRowItem(
      {required imagePath,
      required String name,
      required String time,
      required String price}) {
    return Row(
      children: [
        Image.asset(
          imagePath,
          height: 45,
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(name, style: const TextStyle(fontSize: 16)), Text(time)],
        ),
        const Spacer(),
        Text(price, style: const TextStyle(color: Colors.red, fontSize: 18))
      ],
    );
  }

  Column buildColumnItem(
      {required colorCircle, required imagePath, required String title}) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: colorCircle,
          child: Image.asset(
            imagePath,
            height: 25,
            width: 25,
          ),
        ),
        Text(title)
      ],
    );
  }

  Column buildColumnChart(
      {required double height,
      required String textPrice,
      required String title,
      bool isTotal = false}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        RotatedBox(
          quarterTurns: -1,
          child: Text(
            textPrice,
            style: const TextStyle(fontSize: 14),
          ),
        ),
        const SizedBox(height: 5),
        Container(
          width: 30,
          height: height,
          decoration: BoxDecoration(
              color: (isTotal!) ? const Color(0xff304fff) : const Color(0xfffed835)),
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }

  Expanded buildCard({required bool isTotal}) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
         decoration: BoxDecoration(
          color: (isTotal) ? const Color(0xff304fff) : const Color(0xfffed835),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                (isTotal)
                    ? Image.asset(
                        AppImage.iconWallet2,
                        width: 20,
                      )
                    : Image.asset(
                        AppImage.iconWallet3,
                        width: 20,
                      ),
                const SizedBox(width: 8),
                Text(
                  (isTotal) ? "Total Spend" : "Available Balance",
                  style: TextStyle(
                    color: (isTotal) ? Colors.white : Colors.black,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              (isTotal) ? "\$500.00" : "\$20,000.00",
              style: TextStyle(
                color: (isTotal) ? Colors.white : Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
