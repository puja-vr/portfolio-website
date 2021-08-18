class MyBlog {
  final String blogId;

  MyBlog({required this.blogId});
}

class BlogData {
  //final String blogId;
  final String title;
  final String content;
  final DateTime date;
  final int likes;

  BlogData({
    //required this.blogId,
    required this.title,
    required this.content,
    required this.date,
    required this.likes,
  });
}
