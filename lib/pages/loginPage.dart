import 'package:callcenter_itbank/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController getUserC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 130, right: 30, left: 30),
        children: [
          SizedBox(
            width: 236,
            height: 75,
            child: Image.asset("assets/images/logo.png"),
          ),
          SizedBox(
            height: 25,
          ),
          SizedBox(
            width: 300,
            height: 300,
            child: LottieBuilder.asset("assets/lottie/login.json"),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              labelText: 'Dengan siapa kami berbicara?',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            ),
            controller: getUserC,
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              SizedBox(
                width: 150,
                height: 35,
                child: ElevatedButton(
                  onPressed: () =>
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => HomePage(user: getUserC.text),
                  )),
                  child: Text("Masuk"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(79, 82, 255, 1),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class UserName {
  static var getUserC = TextEditingController();
}

// background: rgba(79, 82, 255, 1);
