import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

import 'package:ecommerce/routes/home.dart';
import 'package:ecommerce/routes/purchases.dart';
import 'package:ecommerce/routes/sales.dart';
import 'package:ecommerce/routes/signin.dart';
import 'package:ecommerce/routes/signup.dart';


void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return SafeArea(
          child: MaterialApp(
            debugShowCheckedModeBanner: false,

            title: 'E-Commerce App',
            showPerformanceOverlay: true,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigoAccent),
              useMaterial3: true,
              fontFamily: "Cairo",
              // primarySwatch: Colors.orange,
            ),
            initialRoute: '/signing',
            routes: {
              '/signup': (context) => SignupPage(),
              '/signing': (context) => const SigningPage(),
              '/home': (context) => const HomeScreen(),
              '/sales': (context) => const SalesScreen(),
              '/purchases': (context) => const PurchasesScreen(),
            },
            // onGenerateRoute: router.generateRoute,
          ),
        );},
    );
  }
}
