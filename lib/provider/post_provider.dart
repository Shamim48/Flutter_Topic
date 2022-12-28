import 'package:flutter/material.dart';
import 'package:widget_demo/models/post_model.dart';
import 'package:widget_demo/repository/post_repo.dart';

class PostDataProvider with ChangeNotifier {
  PostModel? post = PostModel();
  bool loading = false;
  PostRepo? postRepo=PostRepo();
  List<PostModel>? _postList;
  List<PostModel>? get postList=>_postList;

  getPostData(context) async {
    loading = true;
    post = await postRepo!.getSinglePostData(context);
    loading = false;
    notifyListeners();
  }

   getPostListData(context) async {
    loading = true;
    _postList = await postRepo!.getPostListData(context);
    loading = false;
    print(_postList);
    notifyListeners();
  }


}