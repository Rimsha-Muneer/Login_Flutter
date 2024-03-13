import 'package:auth/src/constant/image_strings.dart';
import 'package:auth/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('OR'),
        const SizedBox(height: 10.0),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: Image(image: AssetImage(googleLogo), width: 20.0),
            onPressed: () {},
            label: Text('Sign-in With Google'),
          ),
        ),
        const SizedBox(height: 10.0),
        TextButton(
          onPressed: () => Get.to(() => const SignupScreen()),
          child: const Text.rich(
            TextSpan(
              text: "Don't Have an Account? ",
              children: [
                TextSpan(
                  text: 'SignUp',
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
