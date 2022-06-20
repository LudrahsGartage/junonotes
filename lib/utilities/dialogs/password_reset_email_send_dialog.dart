import 'package:flutter/material.dart';
import 'package:junonotes/utilities/dialogs/generic_dialog.dart';

Future<void> showPasswordResetDialog(BuildContext context) {
  return showGenericDialog<void>(
      context: context,
      title: 'Password Reset',
      content:
          'We have sent you a password resent link on your registered email id',
      optionBuilder: () => {
            'OK': null,
          });
}
