import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class B2wTextField extends StatelessWidget {
  final String label;
  final String hint;
  final String initialValue;
  final bool password;
  final TextEditingController controller;
  final TextInputType textInputType;
  final FormFieldValidator<String> validator;
  final Stream<String> stream;
  final Function(String) onChanged;
  final Function(String) onFieldSubmitted;
  final FocusNode focusNode;
  final Color textColor;
  final Color labelTextColor;
  final TextInputAction textInputAction;
  final UnderlineInputBorder enabledBorder;
  final UnderlineInputBorder focusedBorder;
  final int maxLength;
  final int labelSize;
  final Widget prefixIcon;
  final bool enabled;
  final String errorText;
  final String helperText;
  final Color textHelpColor;
  final String counterText;
  final Widget suffix;
  final List<TextInputFormatter> inputFormatters;

  B2wTextField(
      {@required this.label,
      this.labelSize = 20,
      this.hint,
      this.password = false,
      this.controller,
      this.textInputType = TextInputType.text,
      this.validator,
      this.initialValue,
      this.stream,
      this.onChanged,
      this.textInputAction = TextInputAction.next,
      this.focusNode,
      this.onFieldSubmitted,
      this.maxLength,
      this.labelTextColor,
      this.enabledBorder,
      this.focusedBorder,
      this.textColor = Colors.black87,
      this.prefixIcon,
      this.enabled = true,
      this.errorText,
      this.helperText,
      this.textHelpColor = Colors.black12,
      this.counterText,
      this.suffix,
      this.inputFormatters});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxLength,
      onFieldSubmitted: onFieldSubmitted,
      focusNode: focusNode,
      autocorrect: false,
      textInputAction: textInputAction,
      onChanged: onChanged,
      enabled: enabled,
      validator: validator,
      inputFormatters: inputFormatters,
      initialValue: initialValue,
      keyboardType: textInputType,
      controller: controller,
      obscureText: password,
      style: TextStyle(fontSize: 20, color: textColor),
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        focusColor: Theme.of(context).accentColor,
        counter: null,
        enabledBorder: enabledBorder,
        focusedBorder: focusedBorder,
        labelText: label,
        labelStyle: TextStyle(
            fontSize: labelSize.toDouble(),
            color: labelTextColor == null ? Theme.of(context).primaryColor : labelTextColor),
        hintText: hint,
        helperText: helperText,
        helperStyle: TextStyle(color: textColor),
        counterText: counterText,
        suffix: suffix,
        errorText: errorText,
      ),
    );
  }
}
