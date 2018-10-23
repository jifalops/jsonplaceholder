import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
part 'comment.g.dart';

/// A `jsonplaceholder` comment. See http://jsonplaceholder.typicode.com/comments.
@JsonSerializable()
class Comment {
  const Comment(
      {@required this.id,
      @required this.postId,
      @required this.name,
      @required this.email,
      @required this.body});
  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);

  final int id;
  final int postId;
  final String name;
  final String email;
  final String body;

  static Iterable<Comment> fromJsonArray(String jsonString) =>
      (json.decode(jsonString) as List)
          .map((item) => Comment.fromJson(item as Map<String, dynamic>));
}
