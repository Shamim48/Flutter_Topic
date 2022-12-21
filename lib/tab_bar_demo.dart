import 'package:flutter/material.dart';
import 'package:widget_demo/input_form.dart';
import 'package:widget_demo/main.dart';
import 'package:widget_demo/responsive_design.dart';
import 'package:widget_demo/table_demo.dart';

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  _TabBarDemoState createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> with TickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=TabController(length: 4, vsync: this);
    _tabController.animateTo(0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              controller: _tabController,
              tabs: [
                const Tab(icon: Icon(Icons.home), child: const Text('Home')),
                const Tab(icon: Icon(Icons.table_chart), text: 'Table'),
                const Tab(icon: Icon(Icons.format_align_center), text: 'Form'),
                const Tab(icon: Icon(Icons.restore), text: 'Responsive'),
              ],
            ),
          ),

          body: TabBarView(
            controller: _tabController,
            physics: ScrollPhysics(),
            children: [
              MyHomePage(title: 'Home Page',),
              TableDemo(),
              InputForm(),
              ResponsiveDesign(),

            ],
          ),
        ),
      ),
    );
  }
}
