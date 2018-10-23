import 'dart:async';
import 'package:meta/meta.dart';
import 'package:async_resource/async_resource.dart';
import 'model/post.dart';
import 'model/user.dart';
import 'model/comment.dart';

export 'model/post.dart';
export 'model/user.dart';
export 'model/comment.dart';

/// The resources required by mobile and web versions of the app.
///
/// This isn't really necessary to do, but it helps make sure mobile and web
/// versions of the app are consistent, and makes designing a bit easier.
abstract class Resources {
  Resources({
    @required this.theme,
    @required this.posts,
    @required this.users,
    @required this.comments,
  });

  final LocalResource<String> theme;
  final NetworkResource<Iterable<Post>> posts;
  final NetworkResource<Iterable<User>> users;
  final NetworkResource<Iterable<Comment>> comments;

  // A different way of doing it, fetching data as needed instead of all at once.
  // NetworkResource<Post> getPost(int id);
  // NetworkResource<User> getUser(int id);
  // NetworkResource<Comment> getComment(int id);
}
