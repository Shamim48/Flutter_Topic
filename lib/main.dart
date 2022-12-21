import 'package:flutter/material.dart';
import 'package:widget_demo/custom_design.dart';
import 'package:widget_demo/custom_font.dart';
import 'package:widget_demo/date_image.dart';
import 'package:widget_demo/drawer_bottom_nav.dart';
import 'package:widget_demo/input_form.dart';
import 'package:widget_demo/responsive_design.dart';
import 'package:widget_demo/stack_demo.dart';
import 'package:widget_demo/table_demo.dart';
import 'package:widget_demo/utils/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(()  {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             RichText(text: const TextSpan(
              text:  "Span Text ", style:  TextStyle(color: Colors.black),
              children:  <TextSpan>[
                 TextSpan(
                  text: "Bold text ", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)
                ),
                 TextSpan(text: "Italic", style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black))
              ]
            )),
            buildElevatedButton(context, "Stack", StackScreen()),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> TableDemo()));
            },
               child: const Text("Table Page", style: LatoBold,)),


            ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomDesign()));
                        },
                           child: const Text("Custom Design", style: LatoRegular,)),

            buildElevatedButton(context, "Input Form", InputForm()),

            buildElevatedButton(context, "Date Time and Image", DateAndImageDemo()),
            buildElevatedButton(context, "Drawer and Nav", DrawerAndBottomNav()),
            buildElevatedButton(context, "Font Demo", CustomFont()),
            buildElevatedButton(context, "Responsive Design", ResponsiveDesign()),

            Image.network('https://www.advancedcustomfields.com/wp-content/uploads/2013/11/acf-google-map-field-interface.png' ,
            fit: BoxFit.contain,
           // color: Colors.deepOrange,
            colorBlendMode: BlendMode.colorDodge,
            semanticLabel: "Google Map",
            loadingBuilder: (context, child, loadingProgress) => loadingProgress== null ? child : LinearProgressIndicator()),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}

ElevatedButton buildElevatedButton(BuildContext context, String text, Widget widget) {
  return ElevatedButton(onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> widget));
  },
      child:  Text(text));
}
