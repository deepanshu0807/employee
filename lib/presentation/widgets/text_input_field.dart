import 'package:flutter/material.dart';
import 'package:employee/presentation/utils/utility.dart';

class TextInputCustomField extends StatelessWidget {
  const TextInputCustomField({
    Key key,
    @required this.label,
    @required this.iconData,
    this.textInputType,
    @required this.controller,
    this.errorText,
  }) : super(key: key);
  final String label;
  final IconData iconData;
  final TextInputType textInputType;
  final TextEditingController controller;
  final String errorText;

  @override
  Widget build(BuildContext context) {
    final isPassword = textInputType == TextInputType.visiblePassword;
    final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(
          color: Colors.grey[100], width: 2, style: BorderStyle.solid),
    );
    final hidePasswordNotifier = ValueNotifier(true);
    return ValueListenableBuilder(
        valueListenable: hidePasswordNotifier,
        builder: (context, value, child) {
          return TextField(
            keyboardType: textInputType,
            obscureText: isPassword ? value : false,
            style: text20.copyWith(fontSize: 20),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              suffixIcon: isPassword
                  ? IconButton(
                      onPressed: () => hidePasswordNotifier.value =
                          !hidePasswordNotifier.value,
                      icon: Icon(
                        value ? Icons.visibility : Icons.visibility_off,
                        color: secondaryColor,
                      ),
                    )
                  : null,
              enabledBorder: outlineInputBorder,
              hintText: label,
              errorText: errorText,
              focusedBorder: outlineInputBorder.copyWith(
                  borderSide: BorderSide(color: primaryColor, width: 2)),
              hintStyle: TextStyle(color: Colors.grey),
              prefixIcon: Icon(iconData, color: primaryColor, size: 25),
            ),
            controller: controller,
            cursorColor: primaryColor,
          );
        });
  }
}