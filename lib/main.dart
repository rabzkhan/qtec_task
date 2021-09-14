import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qtec_task/screens/product_page.dart';
import 'package:qtec_task/service/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<ProductDetailsProvider>(
              create: (context) => ProductDetailsProvider())
        ],
        child: ProductDetailsScreen(),
      ),
    );
  }
}
