import 'package:w6_asynchronous_calls_networking/EX-1-START-CODE/models/course.dart';
import 'package:w6_asynchronous_calls_networking/EX-1-START-CODE/repository/courses_repository.dart';

class CoursesMockRepository implements CoursesRepository {
  final List<Course> _courses = [
    Course(name: 'Flutter'),
    Course(name: 'HTML'),
    Course(name: 'JAVA'),
    Course(name: 'OS')
  ];


  @override
  void addScore(Course course, CourseScore score) {
    course.addScore(score);
  }

  @override
  List<Course> getCourses() {
    return _courses;
  }}