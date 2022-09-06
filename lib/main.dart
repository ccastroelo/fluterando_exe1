import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Ubuntu',
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xffFD267D), Color(0xffFF7854)])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(flex: 2, child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 37,
                    width: 37,
                    child: SvgPicture.asset('assets/imagens/tinder_logo.svg',
                        semanticsLabel: 'Tinder logo')),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "tinder",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
            Expanded(flex: 1, child: Container()),
            Padding(
                padding: const EdgeInsets.all(18.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text:
                        "By tapping Create Account or Sign In, you agree to our Terms. learn hoe we process your data in our ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: "Privacy Policy",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                          )),
                      TextSpan(
                          text: ' and ',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      TextSpan(
                          text: "Cookies Policy",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                          )),
                      TextSpan(text: '.'),
                    ],
                  ),
                )),
            Container(
              constraints: const BoxConstraints(maxWidth: 700),
              child: Column(
                children: const [
                  RoundButtons(
                      image: 'apple_logo.svg', text: 'SIGN IN WITH APPLE'),
                  SizedBox(
                    height: 8,
                  ),
                  RoundButtons(
                      image: 'facebook_logo.svg',
                      text: 'SIGN IN WITH FACEBOOK'),
                  SizedBox(
                    height: 8,
                  ),
                  RoundButtons(
                      icon: FontAwesomeIcons.solidComment,
                      text: 'SIGN IN WITH PHONE NUMBER'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 30, top: 24),
              child: Text(
                "Trouble Signing In?",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoundButtons extends StatelessWidget {
  const RoundButtons({super.key, this.image, required this.text, this.icon});

  final String? image;
  final IconData? icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(45))),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 14, 14, 14),
          child: Row(
            children: [
              SizedBox(
                  height: 17,
                  width: 17,
                  child: icon != null
                      ? Center(
                          child: Icon(
                            icon,
                            color: Colors.white,
                            size: 15,
                          ),
                        )
                      : SvgPicture.asset('assets/imagens/$image')),
              Expanded(
                  child: Center(
                child: Text(
                  text,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 12),
                ),
              )),
              const SizedBox(
                width: 17,
              )
            ],
          ),
        ));
  }
}
