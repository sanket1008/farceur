// To parse this JSON data, do
//
//     final commentListModel = commentListModelFromJson(jsonString);

import 'dart:convert';

CommentListModel commentListModelFromJson(String str) => CommentListModel.fromJson(json.decode(str));

String commentListModelToJson(CommentListModel data) => json.encode(data.toJson());

class CommentListModel {
  final int? userId;
  final String? comment;
  final String? createdDate;

  CommentListModel({
    this.userId,
    this.comment,
    this.createdDate,
  });

  factory CommentListModel.fromJson(Map<String, dynamic> json) => CommentListModel(
    userId: json["userId"],
    comment: json["comment"],
    createdDate: json["createdDate"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "comment": comment,
    "createdDate": createdDate,
  };
}
