import 'dart:convert' as convert;

import 'package:farceur/xd/VideoList.dart';
import 'package:farceur/xd/controller/video_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../base_controller.dart';
class VideoController extends BaseController{
  final RxList<dynamic?> videoList=<dynamic?>[].obs;
  Future<void> getVideoList() async {

    var url=Uri.parse("http://demo.promena.in/api/Video/GetVideos");
    showLoading("Loading");
    var response= await http.get(url);
hideLoading();
    if(response.statusCode==200){
      //var data=json.decode(response.body);
      var data=convert.jsonDecode(response.body) as Map<String, dynamic>;
      var res=data["data"];
      print("$res");
      videoList.clear();

     videoList.addAll(res);
      print(videoList.first);
    }

  }
}