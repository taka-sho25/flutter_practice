import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum InputType {
  text,
  password,
  number,
}

TextInputType getInputType(InputType inputType) {
  if (inputType == InputType.text) {
    return TextInputType.text;
  } else if (inputType == InputType.number) {
    return TextInputType.number;
  } else if (inputType == InputType.password) {
    return TextInputType.visiblePassword;
  }
  return TextInputType.text;
}

class Input extends StatelessWidget {
  const Input({
    super.key,
    required this.type,
    required this.value,
    this.placeholder,
  });

  final InputType type;
  final String value;
  final String? placeholder;

  @override
  Widget build(BuildContext context) {
    final keyboardType = getInputType(type);
    final List<TextInputFormatter> inputFormatters = type == InputType.number
        ? [
            FilteringTextInputFormatter.digitsOnly,
          ]
        : [];
    return TextFormField(
      initialValue: value,
      keyboardType: keyboardType,
      obscureText: type == InputType.password,
      inputFormatters: inputFormatters,
      style: const TextStyle(
        fontSize: 14,
      ),
      decoration: InputDecoration(
        hintText: placeholder ?? '',
        hintStyle: const TextStyle(
          fontSize: 14,
          color: Colors.black38,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 8,
        ),
        isDense: true,
      ),
      // validator: (value) {
      //   print('validator: $value');
      //   return null;
      // },
      onChanged: (value) {
        print('onChange: $value');
      },
    );
  }
}
