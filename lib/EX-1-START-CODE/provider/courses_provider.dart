import 'package:flutter/material.dart';
import 'package:w6_asynchronous_calls_networking/EX-1-START-CODE/models/course.dart';
import 'package:w6_asynchronous_calls_networking/EX-1-START-CODE/repository/courses_repository.dart';

class CoursesProvider extends ChangeNotifier {
  final CoursesRepository coursesRepository;

  CoursesProvider({required this.coursesRepository});

  List<Course> _courses = [];
  List<Course> get courses => _courses;

  Future<void> loadCourses() async{
    _courses = coursesRepository.getCourses();
    notifyListeners();
  }

  void addScore(Course course, CourseScore score){
    coursesRepository.addScore(course, score);
    notifyListeners();
  }
}