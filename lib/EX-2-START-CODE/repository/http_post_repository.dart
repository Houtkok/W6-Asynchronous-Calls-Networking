
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:w6_asynchronous_calls_networking/EX-2-START-CODE/model/post.dart';
import 'package:w6_asynchronous_calls_networking/EX-2-START-CODE/repository/post_repository.dart';

class HttpPostRepository extends PostRepository{
  @override
  Future<List<Post>> getPost() async{
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    final response = await http.get(url);

    if(response.statusCode == 200){
      final List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((json) => Post(id: json['id'], title: json['title'], description: json['body'])).toList();
    } else {
      throw Exception('Failed to load posts. Status code: ${response.statusCode}');
    }
  }
}