import 'package:coffe_ui_apps/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:HomePage(),
      theme: ThemeData(brightness:Brightness.dark,
        primarySwatch: Colors.orange,
      ),
    );
  }
}
