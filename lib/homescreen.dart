import 'package:flutter/material.dart';
import 'package:flutter_application_5/funtions/funtions.dart';
import 'package:flutter_application_5/listofstudent.dart';
import 'package:flutter_application_5/textfeald.dart';

class homescreen extends StatelessWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getallstudent();
    return Scaffold(
      body: SafeArea(child: 
      Column(
        children:  [
          textfeald1(),
        const Expanded(child: listv())
        ],
      )),
    );
  }
}