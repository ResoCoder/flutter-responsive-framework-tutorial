import 'package:flutter/material.dart';
import 'package:flutter_responsive_framework_tutorial/courses_page.dart';

void main() => runApp(const AppWidget());

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Responsive Framework',
      home: const CoursesPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
