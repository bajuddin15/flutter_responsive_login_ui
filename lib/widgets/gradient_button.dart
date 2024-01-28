import 'package:flutter/material.dart';
import 'package:flutter_responsive_login_ui/pallete.dart';

class GradientButton extends StatelessWidget {
  final String label;
  const GradientButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Pallete.gradient1,
            Pallete.gradient2,
            Pallete.gradient3,
          ],
          begin: Alignment.topLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(340, 55),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: Colors.transparent,
        ),
        onPressed: () {},
        child: Text(
          label,
          style: const TextStyle(fontSize: 17),
        ),
      ),
    );
  }
}
