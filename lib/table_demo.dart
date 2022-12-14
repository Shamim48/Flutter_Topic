import 'package:flutter/material.dart';

class TableDemo extends StatefulWidget {
  const TableDemo({Key? key}) : super(key: key);

  @override
  _TableDemoState createState() => _TableDemoState();
}

class _TableDemoState extends State<TableDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mark Table"),
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.white,)),
      ),

      body: Container(
        color: Colors.grey,
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Table(
                border: TableBorder.all(color: Colors.white, width: .5),

                columnWidths:const {
                 0: FlexColumnWidth(6),
                 1: FlexColumnWidth(3),
                 2: FlexColumnWidth(3),
                },
                children: [
                  const
                  TableRow(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey
                    ),
                    children: [
                      Expanded(child: TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: Text("Name", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),)),
                        ),
                      )),

                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Text("Mark",  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                      ),

                      TableCell(
                        child: Text("Grade",  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                      ),

                    ]
                  ),
                  for(int i=0; i<10; i++)
                    TableRow(
                        children: [
                          Expanded(child: Container(
                            child: Text("Student $i", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                          )),

                          Container(
                            child: Text("Mark $i",  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                          ),

                          Container(
                            child: Text("Grade $i",  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                          ),

                        ]
                    ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
