import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    required this.image,
    required this.subtitle,
    required this.title,
    super.key,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(image),
          height: size.height * 0.2,
        ),
        Text(title, style: Theme.of(context).textTheme.headline4),
        Text(subtitle, style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }
}
