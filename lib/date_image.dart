
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DateAndImageDemo extends StatefulWidget {
  const DateAndImageDemo({Key? key}) : super(key: key);

  @override
  _DateAndImageDemoState createState() => _DateAndImageDemoState();
}
class _DateAndImageDemoState extends State<DateAndImageDemo> {

  String date="Select Date";

  TimeOfDay selectedTime = TimeOfDay.now();

  String fileName="";
  File? file;
  final picker = ImagePicker();

/*  void _chooseGallery() async {
    // final pickedFile = await picker.getImage(source: ImageSource.gallery, imageQuality: 50, maxHeight: 500, maxWidth: 500);
     FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'pdf', 'doc'],
    );
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    setState(() {
      if (result != null) {
        PlatformFile? pFile = result.files.first;
        print(pFile.name);
        setState(() {
          fileName=pFile.name;
        });

        // file = File(pFile.path.toString());
        file = File(result.files.single.path.toString());
      } else {
        print('No image selected.');
      }
    });
  }*/

  void _chooseCamera() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera, imageQuality: 50, maxHeight: 500, maxWidth: 500);
    setState(() {
      if (pickedFile != null) {
        file = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  void _chooseGallery() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery, imageQuality: 50, maxHeight: 500, maxWidth: 500);
    setState(() {
      if (pickedFile != null) {
        file = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          SizedBox(height: 20,),

          InkWell(
            onTap: () async {
              DateTime? dateTime = await getDate(context);
              String? day;
              String? month;
              String? year;
              dateTime!.day<10 ? day='0${dateTime.day}' : day='${dateTime.day}';
              dateTime.month<10 ? month='0${dateTime.month}' : month='${dateTime.month}';
              year='${dateTime.year}';
              date='$day-$month-$year';
              setState(() {

              });
            },
            child: Container(
              height: 30,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Text(date),
            ),
          ),

          SizedBox(height: 20,),

          InkWell(
            onTap: () async {
              _selectTime(context);
            },
            child: Container(
              height: 30,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Text("${selectedTime.hour}:${selectedTime.minute}"),
            ),
          ),

           SizedBox(height: 20,),

          InkWell(
            onTap: () async {
              _chooseCamera();
            },
            child: Container(
              height: 30,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Text("Image from camera" ),
            ),
          ),
          SizedBox(height: 20,),
           InkWell(
            onTap: () async {
              _chooseGallery();
            },
            child: Container(
              height: 30,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Text("Image From Gallery"),
            ),
          ),
          SizedBox(height: 20,),
          file!=null ? Image.file(file! , height: 300, width: double.infinity, fit: BoxFit.cover,) : Container(),






        ],
      ),
    );
  }
  _selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if(timeOfDay != null && timeOfDay != selectedTime)
    {
      setState(() {
        selectedTime = timeOfDay;
      });
    }
  }
}
Future<DateTime?> getDate(BuildContext context) async {
  return showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2018),
    lastDate: DateTime(2030),
    builder: (BuildContext context, Widget? child) {
      return Theme(
        data: ThemeData(
          colorScheme: ColorScheme.light(
            primary: Colors.blueAccent,
          ),
          dialogBackgroundColor: Colors.white,
        ),
        child: child!,
      );
    },
  );
}




