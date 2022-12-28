
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:widget_demo/drawer_bottom_nav.dart';
import 'package:widget_demo/utils/styles.dart';

class ResponsiveDesign extends StatefulWidget {
  const ResponsiveDesign({Key? key}) : super(key: key);

  @override
  _ResponsiveDesignState createState() => _ResponsiveDesignState();
}

class _ResponsiveDesignState extends State<ResponsiveDesign> {

  @override
  Widget build(BuildContext context) {
    var cw=MediaQuery.of(context).size.width;
    var ch=MediaQuery.of(context).size.height;
    return LayoutBuilder(builder: (context , constain){
      if(constain.maxWidth <600){
        return MobileDesign();
      }else{
        return  WebDesign();
      }
    });
  }
}

class MobileDesign extends StatefulWidget {
  const MobileDesign({Key? key}) : super(key: key);

  @override
  _MobileDesignState createState() => _MobileDesignState();
}

class _MobileDesignState extends State<MobileDesign> {
  @override
  Widget build(BuildContext context) {
    var cw=MediaQuery.of(context).size.width;
    var ch=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(" Mobile "),
      ),
      drawer: CustomDrawer(),
      body: ListView(
        children: [
          Container(
              height: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              color: Colors.grey,
              child: Text('Video Player'),
            ),
          SizedBox(height: 10,),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.green,
            child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index){
                  return ListTile(
                    leading: Icon(Icons.image),
                    title: Text("Video Name"),
                  );
                }),
          )
        ],
      )
    );
  }
}

class WebDesign extends StatefulWidget {
  const WebDesign({Key? key}) : super(key: key);

  @override
  _WebDesignState createState() => _WebDesignState();
}

class _WebDesignState extends State<WebDesign> {
  @override
  Widget build(BuildContext context) {
    var cw=MediaQuery.of(context).size.width;
    var ch=MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(
          children: [
            Container(
              height: 50,
              color: Colors.blue,
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 50,),
                  Text("Home" , style: LatoMedium.copyWith(fontSize: 18),),
                  SizedBox(width: 20,),
                  Text("Contact", style: LatoMedium.copyWith(fontSize: 18),),
                  SizedBox(width: 20,),
                  Text("About Us", style: LatoMedium.copyWith(fontSize: 18),),
                  SizedBox(width: 20,),
                  Text("Profile", style: LatoMedium.copyWith(fontSize: 18),),
                  SizedBox(width: 20,),

                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomDrawerforWeb(),
                  SizedBox(width: 10,),

                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height/2,
                      alignment: Alignment.center,
                      color: Colors.grey,
                      child: Text('Video Player'),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: ch-50,
                    color: Colors.green,
                    child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, index){
                          return ListTile(
                            leading: Icon(Icons.image),
                            title: Text("Video Name"),
                          );
                        }),
                  )
                ],
              ),
            )

          ],
        )
    );
  }

  CustomDrawerforWeb() {
    return Container(
      width: 300,
      height: MediaQuery.of(context).size.height-50,
      child: ListView(
      padding: EdgeInsets.zero,
      children: [
         Container(
           height: 100,
          decoration: BoxDecoration(
            color: Colors.green,
          ),
          child: Text(
            'Navigation Drawer',
            style: TextStyle(fontSize: 20),
          ),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: const Text(' My Profile '),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.book),
          title: const Text(' My Course '),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.workspace_premium),
          title: const Text(' Go Premium '),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.video_label),
          title: const Text(' Saved Videos '),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.edit),
          title: const Text(' Edit Profile '),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: const Text('LogOut'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    ),
    );
  }
}
