// import 'dart:ffi';

import 'package:flutter/material.dart';

// import 'package:ecommerce/routes/';

class PurchaseScreen extends StatelessWidget {
  const PurchaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Purchase'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Purchase Page"),
      ),
    );
  }
}
