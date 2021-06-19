import 'package:employee/presentation/utils/space.dart';
import 'package:employee/presentation/utils/utility.dart';
import 'package:employee/presentation/widgets/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class Register extends StatefulWidget {
  const Register({Key key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController nameC = TextEditingController();
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
              "Register",
              style: text50,
            ),
            verticalSpaceLarge,
            Text(
              " Name",
              style: text22,
            ),
            verticalSpaceMedium15,
            TextInputCustomField(
              label: 'Full name',
              iconData: Icons.account_box_rounded,
              controller: nameC,
              textInputType: TextInputType.name,
            ),
            verticalSpaceMedium25,
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
            RoundedLoadingButton(
              borderRadius: 15,
              color: Colors.black,
              controller: _btnController,
              onPressed: () {},
              child: Text(
                "Register",
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
