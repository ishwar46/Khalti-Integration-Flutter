import 'package:flutter/material.dart';
import 'package:khalti_flutter/khalti_flutter.dart';
import 'package:khalti_test/khalti.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return KhaltiScope(
      //use your public/test key here
      publicKey: '',
      enabledDebugging: true,
      builder: (context, navKey) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: KhaltiTest(),
            navigatorKey: navKey,
            localizationsDelegates: const [
              KhaltiLocalizations.delegate,
            ]);
      },
    );
  }
}
