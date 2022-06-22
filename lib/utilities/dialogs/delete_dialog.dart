import 'package:flutter/material.dart';
import 'package:junonotes/utilities/dialogs/generic_dialog.dart';
import 'package:junonotes/extensions/buildcontext/loc.dart';

Future<bool> showDeleteDialog(BuildContext context) {
  return showGenericDialog<bool>(
    context: context,
    title: context.loc.delete,
    content: context.loc.delete_note_prompt,
    optionBuilder: () => {
      context.loc.cancel: false,
      context.loc.yes: true,
    },
  ).then(
    (value) => value ?? false,
  );
}
