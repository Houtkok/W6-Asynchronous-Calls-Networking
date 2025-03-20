import '../model/post.dart';

import 'post_repository.dart';

class MockPostRepository extends PostRepository {
  @override
  Future<List<Post>> getPost() async {
    await Future.delayed(Duration(seconds: 5));
    
    return [
      Post(id: 1, title: 'Mock Post 1', description: 'This is the first mock post.'),
      Post(id: 2, title: 'Mock Post 2', description: 'This is the second mock post.'),
      Post(id: 3, title: 'Mock Post 3', description: 'This is the third mock post.'),
    ];
  }  
}
