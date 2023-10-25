import 'package:farceur/data/model/add_comments_model.dart';
import 'package:farceur/data/model/comment_model.dart';
import 'package:farceur/data/repo/video_detail_services.dart';
import 'package:flutter/cupertino.dart';

class VideoDetailsProvider with ChangeNotifier{

  CommentListModel commentList = CommentListModel();



  Future<void> getCommentList(int videoId) async{

    var response= await VideoDetailsServices().getCommentList(videoId);

    if(response.comment?.isNotEmpty==true ){
      commentList=response;

      notifyListeners();
    }


  }


  Future<void> addComments(AddCommentsModel model) async{

    var response= await VideoDetailsServices().addComments(model);

    if(response.statusCode==200){

      notifyListeners();
    }


  }

}