import 'package:flutter/material.dart';
import 'package:pos_system/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              const Text(
                'Get Started',
                style: TextStyle(
                    fontFamily: "Gilroy",
                    fontWeight: FontWeight.w800,
                    fontSize: 23),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: InputField(
                  isObscure: false,
                  color: Colors.black12,
                  label: 'ID Number',
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: InputField(
                  isObscure: true,
                  color: Colors.black12,
                  label: 'Password',
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: InputButton(
                  label: 'Sign In',
                  fontSize: 13,
                  function: () {},
                ),
              ),
              Spacer(),
              Center(
                  child: Text.rich(
                      TextSpan(children: [
                        TextSpan(text: 'Cashiery'),
                        TextSpan(text: '®', style: TextStyle(fontSize: 15))
                      ]),
                      style: TextStyle(
                          fontFamily: "Gilroy",
                          fontWeight: FontWeight.w800,
                          fontSize: 23))),
              SizedBox(height: 100)
            ],
          ),
        ),
      ),
    );
  }
}
