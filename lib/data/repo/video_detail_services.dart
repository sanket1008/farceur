import 'dart:convert';

import 'package:farceur/data/model/add_comments_model.dart';
import 'package:farceur/data/model/comment_model.dart';
import 'package:farceur/data/model/video_model.dart';

import '../api_client.dart';
import '../model/common_response.dart';
import '../rest_adapter.dart';

class VideoDetailsServices {
  static VideoDetailsServices? _instance;

  factory VideoDetailsServices() => _instance ??= VideoDetailsServices._();

  VideoDetailsServices._();

  Future<CommentListModel> getCommentList(
      int videoId) async {
    var response = await RestAdapter()
        .dio
        .get(ApiClient.GET_COMMENTS, queryParameters: {"videoId": videoId});

    return  CommentListModel.fromJson(response.data);
  }

  List<CommentListModel> getConvertedToList(List<dynamic> data) {
    return data.map((e) => CommentListModel.fromJson(e)).toList();
  }

  // Future<List<CommentListModel>> getCommentList(int videoId) async {
  //   var response = await RestAdapter().dio.get(ApiClient.GET_COMMENTS,
  //       queryParameters: {
  //         "videoId": videoId
  //       });
  //
  //   return commentListModelFromJson(response.data);
  //
  // }
  //
  // List<CommentListModel> getConvertedToList(
  //     List<dynamic> data) {
  //   return data.map((e) => CommentListModel.fromJson(e)).toList();
  // }

  Future<CommonResponse<String>> addComments(
      AddCommentsModel model) async {
    var response = await RestAdapter().dio.post(
          ApiClient.ADD_COMMENTS,
          data: addCommentsModelToJson(model),
        );

    return CommonResponse<String>.fromJson(response.data,
        (data) => "");
  }
}
