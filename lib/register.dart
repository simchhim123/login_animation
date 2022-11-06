import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:login_animation/login.dart';
import 'package:login_animation/password_textfield.dart';
import 'package:login_animation/user_textfield.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Icon accountIcon = const Icon(
    Icons.account_circle_outlined,
    color: Colors.lightBlueAccent,
  );
  Icon emailIcon = const Icon(
    Icons.email_outlined,
    color: Colors.lightBlueAccent,
  );
  double val = 0;
  bool switchScreen = true;
  Timer registerTimer = Timer(const Duration(seconds: 1), (){});
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: val),
      duration: const Duration(seconds: 1),
      builder: (_, value, child) => Transform(
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.001)
          ..rotateY(value),
        alignment: Alignment.bottomCenter,
        child: child,
      ),
      child: switchScreen ? Transform(
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.001)
          ..rotateY(pi),
        alignment: Alignment.bottomCenter,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.8,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.lightBlueAccent,
                    Colors.black,
                    Colors.black,
                  ]),
              borderRadius: BorderRadius.circular(55.00)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                  width: 200,
                  child: Center(
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                UserTextField(
                  prefixIcon: accountIcon,
                  labelText: 'Username',
                  hintText: 'Enter your username',
                ),
                const SizedBox(
                  height: 20,
                ),
                UserTextField(
                  prefixIcon: emailIcon,
                  labelText: 'Email',
                  hintText: 'Enter your email',
                ),
                const SizedBox(
                  height: 20,
                ),
                PasswordTextField(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                ),
                const SizedBox(
                  height: 20,
                ),
                PasswordTextField(
                  labelText: 'Comfirm Password',
                  hintText: 'Enter your Comfirm password',
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.lightBlueAccent),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: const BorderSide(
                                    color: Colors.lightBlueAccent)))),
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account!',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            val = pi;
                            registerTimer = Timer(const Duration(milliseconds: 500), () {
                              setState(() {
                                switchScreen = false;
                              });
                            });
                          });
                        },
                        child: const Text(
                          'Login now',
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ): const Login()
    );
  }
}
