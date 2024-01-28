import 'package:flutter/material.dart';
import 'package:flutter_responsive_login_ui/pallete.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String label;
  const SocialButton({super.key, required this.iconPath, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: SvgPicture.asset(
        iconPath,
        width: 25,
        // ignore: deprecated_member_use
        color: Pallete.whiteColor,
      ),
      label: Text(
        label,
        style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            color: Pallete.whiteColor),
      ),
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Pallete.borderColor,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10)),
        fixedSize: const Size(340, 60),
      ),
    );
  }
}
