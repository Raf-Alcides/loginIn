import 'package:flutter/material.dart';

class LoginIn extends StatelessWidget {
  const LoginIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return Scaffold(
      body: Container(
        color: theme.colorScheme.onBackground,
      ),
    );
  }
}
