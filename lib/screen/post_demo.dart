import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget_demo/provider/post_provider.dart';
import 'package:widget_demo/utils/styles.dart';

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
    postMdl.getPostListData(context);
  }

  @override
  Widget build(BuildContext context) {
    final postMdl = Provider.of<PostDataProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Demo"),
      ),
      body: Column(
        children: [
          Container(
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
          SizedBox(height: 20,),
          SizedBox(height: 25,
          child: Text("Post List", style: LatoBold.copyWith(fontSize: 22),),),

          postMdl.postList!=null ? SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/2,
            child: ListView.builder(
              itemCount: postMdl.postList!.length,
            padding: EdgeInsets.all(10),
            itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 40, bottom: 20),
                      child: Text(
                        "${postMdl.postList![index].title}" ?? "",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Container(
                      child: Text("${postMdl.postList![index].body}" ?? ""),
                    )
                  ],
                ),
              );
            }),
          ) : Center(child: CircularProgressIndicator(),)
        ],
      ),
    );
  }
}