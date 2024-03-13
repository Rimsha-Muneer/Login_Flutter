import 'package:auth/src/constant/image_strings.dart';
import 'package:flutter/material.dart';
class LoginWidgetHeader extends StatelessWidget {
  const LoginWidgetHeader({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(headerImage),
          height: size.height * 0.2,
        ),
         Text("Welcome Back",
        style: Theme.of(context).textTheme.headline4),
    Text("Make it work,Make it fast, Make it right",
        style: Theme.of(context).textTheme.bodyText1),
        
      ],
    );
  }
}