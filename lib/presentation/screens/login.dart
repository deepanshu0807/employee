import 'package:employee/presentation/utils/space.dart';
import 'package:employee/presentation/utils/utility.dart';
import 'package:employee/presentation/widgets/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: kPadding20.copyWith(left: 40, right: 40),
        height: screenHeight(context),
        width: screenWidth(context),
        decoration: BoxDecoration(
          gradient: gradientDecoration,
        ),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Image.asset(
                    "images/back.png",
                    width: 50.w,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            verticalSpaceMedium20,
            Text(
              "Login",
              style: text50,
            ),
            verticalSpaceMassive,
            verticalSpaceMassive,
            Text(
              " Email address",
              style: text22,
            ),
            verticalSpaceMedium15,
            TextInputCustomField(
              label: 'abc@example.com',
              iconData: Icons.mail,
              controller: emailC,
              textInputType: TextInputType.emailAddress,
            ),
            verticalSpaceMedium25,
            Text(
              " Password",
              style: text22,
            ),
            verticalSpaceMedium15,
            TextInputCustomField(
              textInputType: TextInputType.visiblePassword,
              label: '******',
              iconData: Icons.lock,
              controller: passwordC,
            ),
            verticalSpaceMedium30,
            Center(
              child: InkWell(
                onTap: () {},
                child: Text(
                  "Forgot password ?",
                  style: text18.copyWith(color: Colors.grey[800]),
                ),
              ),
            ),
            verticalSpaceMedium25,
            RoundedLoadingButton(
              //borderRadius: 15,
              color: Colors.black,
              controller: _btnController,
              onPressed: () {},
              child: Text(
                "Login",
                style: text22.copyWith(
                  fontSize: 25.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
