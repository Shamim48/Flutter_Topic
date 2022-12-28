import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:widget_demo/models/post_model.dart';
import 'package:http/http.dart' as http;

class PostRepo{

  Future<PostModel?> getSinglePostData(context) async {
    PostModel? result;
    try {
      /*final response = await http.get(
        "/posts/1",
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        },
      );*/
      var client = http.Client();
      var url =
      Uri.https('jsonplaceholder.typicode.com', '/posts/1');

      var res= await http.get(url);
      if (res.statusCode == 200) {
        final item = json.decode(res.body);
        result = PostModel.fromJson(item);
      } else {
        print("Data not found");
      }
    } catch (e) {
      print(e);
    }
    return result;
  }

   Future<List<PostModel>> getPostListData(context) async {
    PostModel? result;
    List<PostModel> postList=[];
    try {
      var url =
      Uri.https('jsonplaceholder.typicode.com', '/posts');

      var res= await http.get(url);
      if (res.statusCode == 200) {
        var item = json.decode(res.body);
      //  result = PostModel.fromJson(item);

        for( var json in item){
          PostModel post=  PostModel(
            userId: json['userId'],
            id: json['id'],
            title: json['title'] ?? "",
            body: json['body'] ?? "",
          );
          postList.add(post);
        }
      } else {
        print("Data not found");
      }
    } catch (e) {
      print(e);
    }
    return postList;
  }


}