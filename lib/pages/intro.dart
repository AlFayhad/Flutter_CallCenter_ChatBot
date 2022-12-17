import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'package:lottie/lottie.dart';

import 'loginPage.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Hai, Saya adalah asisten ITBank kamu ",
          body:
              "Saya siap menemani dan membantu jalani hari-harimu lebih mudah, kapanpun dan dimanapun..",
          image: SizedBox(
            width: 400,
            height: 400,
            child: LottieBuilder.asset("assets/lottie/intro1.json"),
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Title of Second page",
          body: "Welcome to the app! This is a description of how it works.",
          image: SizedBox(
            width: 400,
            height: 400,
            child: LottieBuilder.asset("assets/lottie/intro2.json"),
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Title of Third page",
          body: "Welcome to the app! This is a description of how it works.",
          image: SizedBox(
            width: 400,
            height: 400,
            child: LottieBuilder.asset("assets/lottie/intro3.json"),
          ),
          decoration: pageDecoration,
        ),
      ],
      showNextButton: true,
      done: const Text("Done"),
      next: Icon(Icons.arrow_forward_rounded),
      onDone: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            ));
      },
    );
  }
}

// textstyle
const pageDecoration = const PageDecoration(
  titleTextStyle: TextStyle(
      color: Color.fromRGBO(7, 17, 117, 1),
      fontWeight: FontWeight.w800,
      fontSize: 20.0),
  bodyTextStyle: TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16.0,
    color: Color.fromRGBO(7, 17, 117, 1),
  ),
);

