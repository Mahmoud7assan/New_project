import 'package:flutter/material.dart';
import 'package:new_project/Cashiery/HomeScreen.dart';
import 'package:new_project/layout/components.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xff2F9B8B),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 290,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child:
                    textfield(Colors.black, 30, "Get Started", FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: 340,
                  child: defaultFormFieldd(
                      controller: emailController,
                      label: "User ID",
                      radius: 20,
                      validat: (String value) {
                        if (value.isEmpty) {
                          return 'User ID must not be Empty';
                        }
                      }),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: 340,
                  child: defaultFormFieldd(
                      controller: passwordController,
                      label: "Password",
                      radius: 20,
                      type: TextInputType.phone,
                      isPassword: true,
                      suffix: Icons.remove_red_eye,
                      validat: (String value) {
                        if (value.isEmpty) {
                          return "Password must not be Empty";
                        }
                      }),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: defaultButton(
                    text: "Sign In",
                    radius: 20,
                    function: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen())),
                    width: 340,
                    background: Colors.black,

                    //height: 0,
                    isUpperCase: false),
              ),
              SizedBox(height: 220),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  textfield(Colors.black, 25, "Cashiery", FontWeight.normal),
                  textfield(Colors.black, 10, "®", FontWeight.normal)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
