import 'package:devs_outliers/screens/util/constants.dart';
import 'package:devs_outliers/screens/util/text_field_container.dart';
import 'package:flutter/material.dart';


class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const RoundedPasswordField({
    Key ? key,
    this.onChanged,
    this.controller,
    this.validator
  }) : super(key: key);

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool notShowPassword = true;
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        controller: widget.controller,
        obscureText: notShowPassword,
        validator: widget.validator,
        onChanged: widget.onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Senha",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: IconButton(
            icon: notShowPassword ?  Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ): Icon(
            Icons.visibility_off_outlined,
            color: kPrimaryColor,
          ),
          onPressed: (){
            setState(() {
              notShowPassword = !notShowPassword;
            });
          },
          ),
        
          border: InputBorder.none,
        ),
      ),
    );
  }
}