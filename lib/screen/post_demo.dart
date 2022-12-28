import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget_demo/provider/post_provider.dart';

class PostDemoScreen extends StatefulWidget {
  @override
  _PostDemoScreenState createState() => _PostDemoScreenState();
}

class _PostDemoScreenState extends State<PostDemoScreen> {
  @override
  void initState() {
    super.initState();
    final postMdl = Provider.of<PostDataProvider>(context, listen: false);
    postMdl.getPostData(context);
  }

  @override
  Widget build(BuildContext context) {
    final postMdl = Provider.of<PostDataProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Demo"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: postMdl==null
            ? Container(
          child: CircularProgressIndicator(),
        ) : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 40, bottom: 20),
              child: Text(
                "${postMdl.post!.title}" ?? "",
                style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Container(
              child: Text("${postMdl.post!.body}" ?? ""),
            )
          ],
        )
        ,
      ),
    );
  }
}