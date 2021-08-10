import 'package:auth_ui/components/background.dart';
import 'package:auth_ui/components/rounded_btn.dart';
import 'package:auth_ui/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Simple App", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: size.height * .08),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * .45,
            ),
            SizedBox(height: size.height * .03),
            RoundedButton(
              title: "LOGIN",
              press: () {},
              color: PrimaryColor,
              textColor: Colors.white,
            ),
            RoundedButton(
              title: "SIGN UP",
              color: PrimaryLightColor,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
