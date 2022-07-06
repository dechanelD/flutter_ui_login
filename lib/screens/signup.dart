import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import '../utils/constainst.dart';
import '../widgets/rep_textfiled.dart';
import 'login.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          body: Container(
            margin: const EdgeInsets.all(15), //espaces
            width: gWidth,
            height: gHeigh,
            child: Column(
              children: const [
                TopImage(),
                SignUpText(),
                SizedBox(height: 20),
                EmailTextField(),
                SizedBox(height: 20),
                FullNameTextField(),
                SizedBox(height: 20),
                MobileTextField(),
                SizedBox(height: 20),
                TermsText(),
                SizedBox(height: 20),
                ContinueButton(),
                SizedBox(height: 20),
                LoginText()
              ],
            ),
          ),
        ));
  }
}

class LoginText extends StatelessWidget {
  const LoginText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
        child: GestureDetector(
      onTap: () {
        Get.offAll(const LoginScreen());
      },
      child: Container(
          width: gWidth / 2,
          height: gHeigh / 42,
          child: FittedBox(
            child: RichText(
              text: TextSpan(
                  text: "Join us before ?",
                  style: TextStyle(color: text1Color),
                  children: [
                    TextSpan(
                        text: "Login",
                        style: TextStyle(
                            color: buttonColor, fontWeight: FontWeight.w500))
                  ]),
            ),
          )),
    ));
  }
}

class ContinueButton extends StatelessWidget {
  const ContinueButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
        delay: const Duration(milliseconds: 1000),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          width: gWidth,
          height: gHeigh / 15,
          child: (ElevatedButton(
            onPressed: () {
              Get.offAll(const LoginScreen());
            },
            child: Text("Continue"),
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
                backgroundColor: MaterialStateProperty.all(buttonColor)),
          )),
        ));
  }
}

class TermsText extends StatelessWidget {
  const TermsText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
        delay: const Duration(milliseconds: 1400),
        child: GestureDetector(
          onTap: () {},
          child: Container(
              width: gWidth / 2,
              height: gHeigh / 42,
              child: FittedBox(
                child: RichText(
                  text: TextSpan(
                    text: "By signing up, you agree to our",
                    style: TextStyle(color: text1Color),
                    children: [
                      TextSpan(
                          text: "Terms & Privacy police",
                          style: TextStyle(
                              color: buttonColor, fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
              )),
        ));
  }
}

class MobileTextField extends StatelessWidget {
  const MobileTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: const Duration(milliseconds: 1600),
      child: RepTextFiled(icon: LineIcons.phone, suficon: null, text: "Mobile"),
    );
  }
}

//fullNametextField
class FullNameTextField extends StatelessWidget {
  const FullNameTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: const Duration(milliseconds: 2000),
      child:
          RepTextFiled(icon: LineIcons.user, suficon: null, text: "Full Name"),
    );
  }
}

//emailtextfield
class EmailTextField extends StatelessWidget {
  const EmailTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
        delay: Duration(milliseconds: 2400),
        child:
            RepTextFiled(icon: LineIcons.at, suficon: null, text: "Email ID"));
  }
}

//sign up text
class SignUpText extends StatelessWidget {
  const SignUpText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: const Duration(milliseconds: 2800),
      child: Container(
        margin: const EdgeInsets.only(top: 10, right: 270),
        width: gWidth / 4,
        height: gHeigh / 18,
        //color: Colors.red,
        child: const FittedBox(
          child: Text(
            "Sign up",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

//top image
class TopImage extends StatelessWidget {
  const TopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: const Duration(milliseconds: 3200),
      child: Container(
        width: gWidth,
        height: gHeigh / 2.5,
        child: Image.asset("assets/images/sign.png"),
      ),
    );
  }
}
