import 'package:flutter/material.dart';
import 'package:junonotes/utilities/dialogs/generic_dialog.dart';
import 'package:junonotes/extensions/buildcontext/loc.dart';

Future<void> showPasswordResetSentDialog(BuildContext context) {
  return showGenericDialog<void>(
    context: context,
    title: context.loc.password_reset,
    content: context.loc.password_reset_dialog_prompt,
    optionBuilder: () => {
      context.loc.ok: null,
    },
  );
}
