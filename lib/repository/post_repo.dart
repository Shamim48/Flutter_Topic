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
}