// To parse this JSON data, do
//
//     final addCommentsModel = addCommentsModelFromJson(jsonString);

import 'dart:convert';

AddCommentsModel addCommentsModelFromJson(String str) => AddCommentsModel.fromJson(json.decode(str));

String addCommentsModelToJson(AddCommentsModel data) => json.encode(data.toJson());

class AddCommentsModel {
  int? commentId;
  int? userId;
  String? comment;
  int? videoId;

  AddCommentsModel({
    this.commentId,
    this.userId,
    this.comment,
    this.videoId,
  });

  factory AddCommentsModel.fromJson(Map<String, dynamic> json) => AddCommentsModel(
    commentId: json["commentId"],
    userId: json["userId"],
    comment: json["comment"],
    videoId: json["videoId"],
  );

  Map<String, dynamic> toJson() => {
    "commentId": commentId,
    "userId": userId,
    "comment": comment,
    "videoId": videoId,
  };
}
