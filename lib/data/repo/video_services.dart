

import 'package:farceur/data/model/video_model.dart';

import '../api_client.dart';
import '../model/common_response.dart';
import '../rest_adapter.dart';

class VideoServices {
  static VideoServices? _instance;

  factory VideoServices() => _instance ??= VideoServices._();

  VideoServices._();

  Future<CommonResponse<List<VideoListModel>>> getVideoList(int userId) async {
    var response = await RestAdapter().dio.get(ApiClient.GET_VIDEO,
        queryParameters: {
          "userId": userId
        });

    return CommonResponse<List<VideoListModel>>.fromJson(response.data,
        (data) => videoListModelFromJson(data));
  }


}
