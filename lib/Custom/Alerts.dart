
import 'package:flutter/material.dart';

void showAlert(BuildContext context ,var message) {
  showDialog(context: context, builder: (context) {
    return AlertDialog(
      title:Text('$message'),
    );
  },);
}