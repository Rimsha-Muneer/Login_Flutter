import 'package:auth/src/constant/sizes.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: "Email",
                  hintText: "Email",
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 30.0,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: "Password",
                hintText: "Password",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: null, icon: Icon(Icons.remove_red_eye_sharp)),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => Container(
                        padding: EdgeInsets.all(defaultSize),
                      ),
                    );
                  },
                  child: Text('Forget Password')),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.withOpacity(0.7),
                ),
                child: Text('login'.toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
