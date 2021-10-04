import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import 'package:bytebank/database/dao/contact_dao.dart';
import 'package:bytebank/screens/dashboard.dart';

void main() {
  runApp(BytebankApp(
    contactDao: ContactDao(),
  ));
}

class BytebankApp extends StatelessWidget {
  final ContactDao contactDao;
  const BytebankApp({
    Key? key,
    required this.contactDao,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        colorScheme: Theme.of(context)
            .colorScheme
            .copyWith(secondary: Colors.blueAccent[700]),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Dashboard(
        contactDao: contactDao,
      ),
    );
  }
}
