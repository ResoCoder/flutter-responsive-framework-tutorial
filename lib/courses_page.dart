import 'package:flutter/material.dart';
import 'package:flutter_responsive_framework_tutorial/widgets.dart';

import 'courses_data.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Course> courses = Course.courses;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[800],
        centerTitle: true,
        title: const AppBarTitle(),
        actions: [
          MenuTextButton(text: 'Courses'),
          MenuTextButton(text: 'About'),
          IconButton(
            icon: const Icon(Icons.mark_email_unread_rounded),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.logout_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(15.0),
        children: [
          const Center(child: PageHeader()),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              CourseTile(course: courses[0]),
              CourseTile(course: courses[1]),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(child: SubscribeBlock()),
        ],
      ),
    );
  }
}
