// To parse this JSON data, do
//
//     final videoListModel = videoListModelFromJson(jsonString);

import 'dart:convert';

List<VideoListModel> videoListModelFromJson(String str) => List<VideoListModel>.from(json.decode(str).map((x) => VideoListModel.fromJson(x)));

String videoListModelToJson(List<VideoListModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class VideoListModel {
  final int videoId;
  final String fileName;
  final String path;
  final String createdDate;

  VideoListModel({
    required this.videoId,
    required this.fileName,
    required this.path,
    required this.createdDate,
  });

  factory VideoListModel.fromJson(Map<String, dynamic> json) => VideoListModel(
    videoId: json["videoId"],
    fileName: json["fileName"],
    path: json["path"],
    createdDate: json["createdDate"],
  );

  Map<String, dynamic> toJson() => {
    "videoId": videoId,
    "fileName": fileName,
    "path": path,
    "createdDate": createdDate,
  };
}
