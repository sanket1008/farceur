import 'dart:convert' as convert;
import 'package:farceur/data/model/video_model.dart';
import 'package:farceur/data/repo/video_services.dart';
import 'package:farceur/data/rest_adapter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../core/utils/base_controller.dart';
/*
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
}*/

class VideoProvider with ChangeNotifier{

  final List<VideoListModel> videoList=[];

  Future<void> getVideoList(int userId) async{
    showLoading("Loading");
    var response= await VideoServices().getVideoList(userId);
hideLoading();
    if(response.statusCode==200){
      videoList.clear();
      videoList.addAll(response.data?.toList()??[]);
      notifyListeners();
    }


  }

  void hideLoading() {
    //log("Show loading dismissed ...");
    if (Get.isDialogOpen == true) {
      Get.back();
    }
  }

  void showLoading([String? message]) {
    if (Get.isDialogOpen != true) {
      //log("Show loading called ...");
      Get.dialog(
        //barrierDismissible: false,
        Dialog(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircularProgressIndicator(),
                const SizedBox(height: 8),
                Text(message ?? 'Loading...'),
              ],
            ),
          ),
        ),
      );
    }
  }


}
