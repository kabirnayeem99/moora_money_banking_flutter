import 'package:flutter/material.dart';
import 'package:moora_money_banking_flutter/services/ApiProvider.dart';
import 'package:provider/provider.dart';

import 'screens/home_screen/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ApiProvider(),
      child: OurApp(),
    ),
  );
}

class OurApp extends StatelessWidget {
  const OurApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ApiProvider>(
      builder: (context, notifier, _) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: OurHomeScreen(),
      ),
    );
  }
}
