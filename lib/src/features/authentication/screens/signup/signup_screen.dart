import 'package:auth/src/common_widgets/form_header.dart';
import 'package:auth/src/constant/image_strings.dart';
import 'package:auth/src/constant/sizes.dart';
import 'package:auth/src/constant/text_strings.dart';
import 'package:auth/src/features/authentication/screens/login/login.dart';
import 'package:auth/src/features/authentication/screens/signup/signupFormWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(defaultSize),
            child: Column(
              children: [
                FormHeaderWidget(
                  image: welcomeScreenImage,
                  title: loginHeaderTitle,
                  subtitle: loginHeaderSubtitle,
                ),
                signupFormWidget(),
                Column(
                  children: [
                    const Text('OR'),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: Image(image: AssetImage(googleLogo), width: 20.0),
                        label: Text("SignIn With Google.".toUpperCase()),
                      ),
                    ),
                    TextButton(
                      onPressed: () => Get.to(() => const LoginScreen()),
                      child: Text.rich(
                        TextSpan(children: [
                          TextSpan(
                              text: 'Already have an account? ',
                              style: Theme.of(context).textTheme.bodyText1),
                          TextSpan(text: 'Login'),
                        ]),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
