import 'package:flutter/material.dart';

import '../common/app_img.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final bool? showIcon;
  final bool? isOutlineButton;
  final bool? isDisable;
  final IconData? iconPath;
  final VoidCallback? onPressed;

  const CustomButton({
    Key? key,
    this.iconPath = Icons.check,
    this.showIcon = false,
    this.isOutlineButton = false,
    this.isDisable = false,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15),
          backgroundColor: isDisable! ? const Color(0xFFB8B8B8) : isOutlineButton! ? Colors.white : const Color(0xFF304FFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: isOutlineButton! ? const BorderSide(color: Color(0xFF304FFF), width: 2) : BorderSide.none,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: showIcon!,
              child: Row(
                children: [
                  Icon(
                    iconPath!,
                    color: isOutlineButton! ? const Color(0xFF304FFF) : Colors.white,
                    size: 25,
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 21,
                color: isDisable! ? const Color(0xFF606060) : isOutlineButton! ? const Color(0xFF304FFF) : Colors.white ,
                letterSpacing: 0.168,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
