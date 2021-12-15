import 'package:chat_app_encyrpt/components/primary_button.dart';
import 'package:chat_app_encyrpt/constants.dart';
import 'package:chat_app_encyrpt/screens/auth_screen.dart';
import 'package:flutter/material.dart';

class SigninOrSignupScreen extends StatelessWidget {
  const SigninOrSignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              const Spacer(
                flex: 2,
              ),
              Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.light
                    ? 'assets/images/Logo_light1.png'
                    : 'assets/images/Logo_dark1.png',
                height: 146,
                fit: BoxFit.contain,
              ),
              const Spacer(
                flex: 1,
              ),
              PrimaryButton(
                text: "Giriş Yap",
                // press: () {
                //   return null;
                // },
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AuthScreen(),
                    )),
              ),
              const SizedBox(height: kDefaultPadding * 1.5),
              PrimaryButton(
                color: Theme.of(context).colorScheme.secondary,
                text: "Üye Ol",
                press: () {},
              ),
              const Spacer(
                flex: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
