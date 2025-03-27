import 'package:app_alert_dialog/app_alert_dialog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Alert Dialog Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showAlertDialog(context);
          },
          child: Text('Click Me'),
        ),
      ),
    );
  }

  void _showAlertDialog(BuildContext context) {
    AppAlertDialogs.showAlertDialog(
      context: context,
      dialogBodyObject: DialogBodyObject(
        title: 'Error!',
        message: 'Something went wrong!',
      ),
      primaryButton: (pContext) {
        return ElevatedButton(
          onPressed: () {
            Navigator.pop(pContext);
          },
          child: Text('Primary Button'),
        );
      },
      secondaryButton: (sContext) {
        return ElevatedButton(
          onPressed: () {
            Navigator.pop(sContext);
          },
          child: Text('Secondary Button'),
        );
      },
    );
  }
}
