import 'package:junonotes/services/auth/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:junonotes/constants/routes.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({Key? key}) : super(key: key);

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Verification')),
      body: Column(children: [
        const Text(
            'We have sent an email to your account. Please click on the link to verify yourself'),
        const Text(
            'If you have not recieved the email, click on the button below'),
        TextButton(
            onPressed: () async {
              await AuthService.firebase().sendEmailVerification();
            },
            child: const Text('Re-send email verification')),
        TextButton(
          onPressed: () async {
            await AuthService.firebase().logOut();
            Navigator.of(context).pushNamedAndRemoveUntil(
              registerRoute,
              (route) => false,
            );
          },
          child: const Text('Go back to Start Screen'),
        ),
      ]),
    );
  }
}
