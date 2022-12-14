import 'package:flutter/material.dart';
import 'package:widget_demo/main.dart';

class InputForm extends StatefulWidget {
  const InputForm({Key? key}) : super(key: key);

  @override
  _InputFormState createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {

  TextEditingController _controller=TextEditingController();
  TextEditingController _lastNameController=TextEditingController();
  TextEditingController _userNameController=TextEditingController();
  TextEditingController _emailController=TextEditingController();
  TextEditingController _phoneController=TextEditingController();
  FocusNode _focusNode=FocusNode();
  FocusNode _lastNameFocusNode=FocusNode();
  FocusNode _userNameFocusNode=FocusNode();
  FocusNode _emailFocusNode=FocusNode();
  FocusNode _phoneFocusNode=FocusNode();
  FocusNode _nfocusNode=FocusNode();

 late String labelTex="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          SizedBox(height: 30,),
          LebelText(labelTex: "First Name"),
          CustomTextField(controller: _controller, focusNode: _focusNode, hinText: "Write First Name",),
          LebelText(labelTex: "Last Name"),
          CustomTextField(controller: _lastNameController, focusNode: _lastNameFocusNode, hinText: "Write Last Name",),
          LebelText(labelTex: "User Name"),
          CustomTextField(controller: _userNameController, focusNode: _userNameFocusNode, hinText: "Write User Name",),
          LebelText(labelTex: "Email"),
          CustomTextField(controller: _emailController, focusNode: _emailFocusNode, hinText: "Write Email Address",),
          LebelText(labelTex: "Phone"),
          CustomTextField(controller: _phoneController, focusNode: _phoneFocusNode, hinText: "Write Phone Number",),

          ElevatedButton(onPressed: (){
            _phoneController;
            _lastNameController;
            _controller;
            _emailController;
            _userNameController;
            setState(() {

            });
          }, child: Text("Submit")),

          SizedBox(height: 30,),
          LebelText(labelTex: "First Name: ${_controller.text}"),
          LebelText(labelTex: "Last Name: ${_lastNameController.text}"),
          LebelText(labelTex: "User Name: ${_userNameController.text}"),
          LebelText(labelTex: "Email: ${_emailController.text}"),
          LebelText(labelTex: "Phone: ${_phoneController.text}"),


        ],
      ),
    );
  }
}

class LebelText extends StatelessWidget {
  const LebelText({
    Key? key,
    required this.labelTex,
  }) : super(key: key);

  final String labelTex;

  @override
  Widget build(BuildContext context) {
    return Text(labelTex, style: TextStyle(color: Colors.black, fontSize: 16),);
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required TextEditingController controller,
    required FocusNode focusNode,
    required String hinText,
  }) : _controller = controller, _focusNode = focusNode, _hinText=hinText,  super(key: key);

  final TextEditingController _controller;
  final FocusNode _focusNode;
  final String _hinText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, top: 2, bottom: 2, right: 16),
      margin: EdgeInsets.only(top: 5, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.7),
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      child: TextField(
        controller: _controller,
        focusNode: _focusNode,
        decoration: InputDecoration(
          hintText: _hinText,
          border: InputBorder.none
        ),
      ),
    );
  }
}
