import 'package:flutter/material.dart';
import 'package:khalti_flutter/khalti_flutter.dart';
import 'package:khalti_test/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return KhaltiScope(
      publicKey: 'test_public_key_5a22ad67e707441b8362fc7bed556a8d',
      enabledDebugging: true,
      builder: (context, navKey) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'PaywithKhalti',
            home: HomePage(),
            navigatorKey: navKey,
            localizationsDelegates: const [
              KhaltiLocalizations.delegate,
            ]);
      },
    );
  }
}
