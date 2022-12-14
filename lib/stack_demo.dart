import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({Key? key}) : super(key: key);

  @override
  _StackScreenState createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack"),
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.white,)),
      ),

      body: Container(
        height: 150,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.topCenter,
          clipBehavior: Clip.hardEdge,

          children: [
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              color: Colors.blueAccent,

            ),
            Positioned(
                left: 20,
                right: 80,
                bottom: -25,
                child: Container(

                  height: 50,
                  width: 50,
                  color: Colors.green,

            ))
          ],
        ),
      ),
    );
  }
}
