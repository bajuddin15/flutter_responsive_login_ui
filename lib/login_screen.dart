import 'package:flutter/material.dart';
import 'package:flutter_responsive_login_ui/pallete.dart';
import 'package:flutter_responsive_login_ui/widgets/gradient_button.dart';
import 'package:flutter_responsive_login_ui/widgets/login_field.dart';
import 'package:flutter_responsive_login_ui/widgets/password_field.dart';
import 'package:flutter_responsive_login_ui/widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/signin_balls.png'),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Sign In",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const SocialButton(
              iconPath: 'assets/svgs/g_logo.svg',
              label: "Continue with Google",
            ),
            const SizedBox(
              height: 15,
            ),
            const SocialButton(
              iconPath: 'assets/svgs/f_logo.svg',
              label: "Continue with Facebook",
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "or",
              style: TextStyle(fontSize: 17),
            ),
            const SizedBox(
              height: 20,
            ),
            const LoginField(
              hintText: "Email",
            ),
            const SizedBox(
              height: 15,
            ),
            const PasswordField(
              hintText: "Password",
              obscureText: true,
            ),
            const SizedBox(
              height: 20,
            ),
            const GradientButton(label: "Sign In"),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 17),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                    onTap: () {},
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 17, color: Pallete.gradient3),
                    )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
