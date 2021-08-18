import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  late String blogId;
  DatabaseService({this.blogId = ''});

  // collection reference
  final CollectionReference blogCollection =
      FirebaseFirestore.instance.collection('blogs');

  //FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // String getUserId() {
  //   return _firebaseAuth.currentUser!.uid;
  // }

  Future<void> addBlog(String title, String content, DateTime date,
      {int likes = 0}) async {
    return await blogCollection.doc().set({
      //'blogId': blogId,
      'title': title,
      'content': content,
      'date': date,
      'likes': likes,
    });
  }

  // BlogData _blogDataFromSnapshot(DocumentSnapshot snapshot) {
  //   return BlogData(
  //     //blogId: blogId,
  //     title: snapshot['title'],
  //     content: snapshot['content'],
  //     date: snapshot['date'],
  //     likes: snapshot['likes'],
  //   );
  // }

  // Stream<BlogData> get blogData {
  //   return blogCollection.doc(blogId).snapshots().map(_blogDataFromSnapshot);
  // }

  // Stream get data {
  //   return blogCollection.doc().snapshots();
  // }
}
