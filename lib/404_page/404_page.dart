import 'package:flutter/material.dart';

import '../../common/app_img.dart';
import '../../widgets/custom_button.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({super.key});

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              AppImage.image404,
              width: double.infinity,
            ),
            const SizedBox(height: 25),
            const Text("Error 404",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            const Text("Page Not Found",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            const Text("Oops! It looks like the page you are looking for doesn't exist or has been moved. Please try again or go back to the home page.",
                style: TextStyle(fontSize: 15), textAlign: TextAlign.center),
            const Spacer(),
            CustomButton(
              text: "Back to Home",
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
