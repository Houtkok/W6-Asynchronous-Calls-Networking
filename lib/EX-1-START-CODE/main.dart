import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:w6_asynchronous_calls_networking/EX-1-START-CODE/provider/courses_provider.dart';
import 'package:w6_asynchronous_calls_networking/EX-1-START-CODE/repository/courses_mock_repository.dart';

import 'screens/course_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:
          (context) =>
              CoursesProvider(coursesRepository: CoursesMockRepository()),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CourseListScreen(),
      ),
    );
  }
}
