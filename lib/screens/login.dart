import 'package:animate_do/animate_do.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter0/screens/signup.dart';
import 'package:flutter0/utils/constainst.dart';
import 'package:flutter0/widgets/rep_textfiled.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          //--------------fleche de retour au dessus-----------------
          /*appBar:PreferredSize(child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(onPressed: () =>Get.offAll(SignUpScreen()),icon: Icon(Icons.arrow_back_ios),
            color: Colors.black,),
          ),preferredSize: Size.fromHeight(45),
          ),*/

          body: Container(
            margin: EdgeInsets.all(15), //espaces
            width: gWidth,
            height: gHeigh,
            child: Column(
              children: const [
                TopImage(),
                LoginText(),
                SizedBox(height: 20),
                EmailTextField(),
                SizedBox(height: 20),
                PasswordTextField(),
                ForgotText(),
                SizedBox(height: 15),
                LoginButton(),
                SizedBox(height: 15),
                OrText(),
                SizedBox(height: 15),
                GoogleLoginButton(),
                RegisterText()
              ],
            ),
          ),
        ));
  }
}

class RegisterText extends StatelessWidget {
  const RegisterText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
        child: GestureDetector(
      onTap: () {
        Get.offAll(const SignUpScreen());
      },
      child: Container(
          width: gWidth / 2,
          height: gHeigh / 42,
          child: FittedBox(
            child: RichText(
              text: TextSpan(
                  text: "New to Logistics ?",
                  style: TextStyle(color: text1Color),
                  children: [
                    TextSpan(
                        text: "Register",
                        style: TextStyle(
                            color: buttonColor, fontWeight: FontWeight.w500))
                  ]),
            ),
          )),
    ));
  }
}

class GoogleLoginButton extends StatelessWidget {
  const GoogleLoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
        delay: Duration(milliseconds: 600),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          width: gWidth,
          height: gHeigh / 15,
          child: ElevatedButton(
            onPressed: () {},
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset("assets/images/google.png"),
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  "Login With Google",
                  style: TextStyle(
                    color: Color.fromARGB(255, 90, 90, 90),
                  ),
                )
              ],
            ),
            style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(
                  buttonColor.withOpacity(0.2),
                ),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 238, 238, 238))),
          ),
        ));
  }
}

class OrText extends StatelessWidget {
  const OrText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
        delay: Duration(milliseconds: 800),
        child: Container(
          width: gWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 130,
                height: 0.5,
                color: iconColor,
              ),
              Text(
                "   OR   ",
                style: TextStyle(color: iconColor, fontSize: 20),
              ),
              Container(
                width: 130,
                height: 0.5,
                color: iconColor,
              ),
            ],
          ),
        ));
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
        delay: Duration(milliseconds: 1200),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          width: gWidth,
          height: gHeigh / 15,
          child: (ElevatedButton(
            onPressed: () {
              Get.offAll(const SignUpScreen());
            },
            child: Text("Login"),
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
                backgroundColor: MaterialStateProperty.all(buttonColor)),
          )),
        ));
  }
}

class ForgotText extends StatelessWidget {
  const ForgotText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
        delay: Duration(milliseconds: 1600),
        child: GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.only(top: 30, left: 240),
            width: gWidth / 3,
            height: gHeigh / 32,
            child: FittedBox(
              child: Text(
                "Forgot Password ?",
                style:
                    TextStyle(color: buttonColor, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ));
  }
}

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: Duration(milliseconds: 2000),
      child: RepTextFiled(
          icon: LineIcons.alternateUnlock,
          suficon: Icon(LineIcons.eyeSlash),
          text: "Password"),
    );
  }
}

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

class LoginText extends StatelessWidget {
  const LoginText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: Duration(milliseconds: 2800),
      child: Container(
        margin: EdgeInsets.only(top: 10, right: 270),
        width: gWidth / 4,
        height: gHeigh / 18,
        //color: Colors.red,
        child: FittedBox(
          child: Text(
            "Login",
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
      delay: Duration(milliseconds: 3200),
      child: Container(
        width: gWidth,
        height: gHeigh / 2.5,
        child: Image.asset("assets/images/login.png"),
      ),
    );
  }
}
