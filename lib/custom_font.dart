import 'package:flutter/material.dart';
import 'package:widget_demo/utils/styles.dart';

class CustomFont extends StatefulWidget {
  const CustomFont({Key? key}) : super(key: key);

  @override
  State<CustomFont> createState() => _CustomFontState();
}

class _CustomFontState extends State<CustomFont> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom Font", style: LatoBold,),),
      body: ListView(
        children: [
          SizedBox(height: 20,),
          Text("Flutter Class Nine"),
          Text("Flutter Class Nine", style: LatoBold,),
          Text("Flutter Class Nine", style: LatoRegular,),
          Text("Flutter Class Nine", style: LatoLight,),
          Text("Flutter Class Nine", style: LatoBlack,),
          Text("Flutter Class Nine", style: LatoMedium,),
          Text("Flutter Class Nine", style: LatoRegular.copyWith(color: Colors.blue, fontStyle: FontStyle.italic, ),),
        ],
      ),
    );
  }
}
