import 'package:flutter/material.dart';
import 'package:widget_demo/date_image.dart';
import 'package:widget_demo/main.dart';
import 'package:widget_demo/stack_demo.dart';
import 'package:widget_demo/table_demo.dart';

import 'utils/color_resources.dart';

class DrawerAndBottomNav extends StatefulWidget {
  const DrawerAndBottomNav({Key? key}) : super(key: key);

  @override
  _DrawerAndBottomNavState createState() => _DrawerAndBottomNavState();
}

class _DrawerAndBottomNavState extends State<DrawerAndBottomNav> {
  late String title="Drawer and Bottom Nav";

  late PageController _pageController;
  int _pageIndex=1;
  late List<Widget> _screenList;
  GlobalKey<ScaffoldMessengerState> _scaffoldKey=GlobalKey();
  
 late  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController=PageController(initialPage: 3);
    _screenList=[
      DateAndImageDemo(),
      MyHomePage(title: 'Home',),
      TableDemo(),
      StackScreen(),
    ];
  }
  _setPage(int index){
    setState(() {
      _pageController.jumpToPage(index);
      _pageIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        if(_pageIndex!=1){
          _setPage(1);
          return false;
        }else{
          return true;
        }
      },
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Colors.green,

        ),

        drawer: CustomDrawer(),
        bottomNavigationBar: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(top: 10, bottom: 5),
          decoration: const BoxDecoration(
              color: ColorResources.COLOR_PRIMARY,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
          ),
          child: Row(
            children: [
              BottomNavItem(icon: Icons.date_range, isSelect: _pageIndex==0, onTap:()=> _setPage(0)),
              BottomNavItem(icon: Icons.home, isSelect: _pageIndex==1, onTap:()=> _setPage(1)),
              BottomNavItem(icon: Icons.table_chart, isSelect: _pageIndex==2, onTap:()=> _setPage(2)),
              BottomNavItem(icon: Icons.stacked_bar_chart, isSelect: _pageIndex==3, onTap:()=> _setPage(3)),

            ],
          ),
        ),
        body: PageView.builder(
            controller: _pageController,
            itemCount: _screenList.length,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
              return _screenList[index];
            }),

      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
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

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final bool isSelect;
  late Function() onTap;


  BottomNavItem({required this.icon, required this.isSelect, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: InkWell(
      onTap: (){
        onTap();
      },
      child: Icon(icon),
      /* Image.asset(
        image,
        width: isSelect ? 45:35,
        height: isSelect ? 45:35,
      ),*/
    ));
  }
}


