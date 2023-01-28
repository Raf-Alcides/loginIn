import 'package:flutter/material.dart';

class CofferTextFormFild extends StatelessWidget {
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final String label;
  final Color color;
  final bool obscureText;
  final ValueNotifier<bool> _obscureTextVN;
  final bool focus;
  final TextInputType? keyboardType;

  CofferTextFormFild({
    Key? key,
    required this.label,
    required this.color,
    this.controller,
    this.validator,
    this.obscureText = false,
    this.focus = false,
    this.keyboardType
  })  : _obscureTextVN = ValueNotifier<bool>(obscureText),
        super(key: key);

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return ValueListenableBuilder<bool>(
      valueListenable: _obscureTextVN,
      builder: (_, obscureTextVNvalue, Widget? child) {
        return SizedBox(
          // height: 55.h,
          child: TextFormField(
            controller: controller,
            validator: validator,
            obscureText: obscureTextVNvalue,
            textInputAction: TextInputAction.next,
            autofocus: focus,
            keyboardType: keyboardType,
            decoration: InputDecoration(
                filled: true,
                fillColor: color,
                hintText: label,
                hintStyle: TextStyle(color: theme.colorScheme.primary),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: theme.colorScheme.primary,)),
                suffixIcon: obscureText
                    ? IconButton(
                        onPressed: () {
                          _obscureTextVN.value = !obscureTextVNvalue;
                        },
                        icon: Icon(
                          obscureTextVNvalue ? Icons.lock : Icons.lock_open,
                          color: theme.colorScheme.primary,
                        ),
                      )
                    : null),
          ),
        );
      },
    );
  }
}