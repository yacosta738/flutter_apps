import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final String title;
  final Function presentDatePicker;

  AdaptiveFlatButton({this.title, this.presentDatePicker});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: presentDatePicker)
        : FlatButton(
            textColor: Theme.of(context).primaryColor,
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: presentDatePicker,
          );
  }
}
