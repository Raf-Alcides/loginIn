import 'package:flutter/material.dart';
import 'package:login_in/resources/strings.dart';
import 'package:login_in/ui/components/coffer_button.dart';
import 'package:login_in/ui/components/coffer_text_form_fild.dart';

class LoginIn extends StatelessWidget {
  const LoginIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
        backgroundColor: theme.colorScheme.onBackground,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Image.asset("assets/images/logo.png"),
                CofferTextFormFild(
                  label: Strings.email,
                  color: Colors.grey.shade100,
                  focus: true,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 20,
                ),
                CofferTextFormFild(
                  label: Strings.password,
                  color: Colors.grey.shade100,
                  obscureText: true,
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        Strings.forgetPassword,
                        style: TextStyle(
                          color: theme.colorScheme.primary,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                CofferButton(
                  onTap: () {},
                  color: theme.colorScheme.primary,
                  text: Strings.login,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      Strings.start,
                      style: TextStyle(
                          fontSize: 16, color: theme.colorScheme.primary),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        Strings.createAccount,
                        style: TextStyle(
                            fontSize: 16, color: theme.colorScheme.primary),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
