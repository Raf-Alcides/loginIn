import 'package:flutter/material.dart';
import 'package:login_in/resources/strings.dart';
import 'package:login_in/ui/components/coffer_button.dart';
import 'package:login_in/ui/components/coffer_text_form_fild.dart';

class LoginRegister extends StatelessWidget {
  const LoginRegister({Key? key}) : super(key: key);

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
              const SizedBox(
                height: 50,
              ),
              CofferTextFormFild(
                label: Strings.fullName,
                color: Colors.brown.shade100,
                focus: true,
              ),
              const SizedBox(
                height: 20,
              ),
              CofferTextFormFild(
                label: Strings.email,
                color: Colors.brown.shade100,
              ),
              const SizedBox(
                height: 20,
              ),
              CofferTextFormFild(
                label: Strings.phone,
                color: Colors.brown.shade100,
              ),
              const SizedBox(
                height: 20,
              ),
              CofferTextFormFild(
                label: Strings.cpf,
                color: Colors.grey.shade300,
              ),
              const SizedBox(
                height: 20,
              ),
              CofferTextFormFild(
                label: Strings.date,
                color: Colors.brown.shade100,
              ),
              const SizedBox(
                height: 20,
              ),
              CofferTextFormFild(
                label: Strings.password,
                color: Colors.grey.shade300,
                obscureText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              CofferButton(
                  onTap: () {},
                  color: theme.colorScheme.primary,
                  text: Strings.register,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
