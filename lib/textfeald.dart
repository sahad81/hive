import 'package:flutter/material.dart';
import 'package:flutter_application_5/db/model.dart';
import 'package:flutter_application_5/funtions/funtions.dart';

// ignore: camel_case_types
class textfeald1 extends StatelessWidget {
   textfeald1({Key? key}) : super(key: key);
 final _namecontroler=TextEditingController();
 final _agecontroler=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          const Text('submit student details',style: TextStyle(fontSize: 30,
          fontWeight: FontWeight.bold),)
          ,const SizedBox(height: 10,),
          TextFormField(
            controller: _namecontroler,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'name of student'
            )
          ),
          const SizedBox(height: 10,),
          TextFormField(
          keyboardType: TextInputType.number,
               controller: _agecontroler,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'age of student'
            ),
          ),
          TextButton(onPressed: (){
buttenclicked();

          }
,            style: TextButton.styleFrom(
  backgroundColor: Colors.blue
)
          , child:const Text('sumit please',style: TextStyle(
            color: Colors.white
          ),),)
        ],
      ),
    ); 
    
  }
  Future <void> buttenclicked() async{
    final _age =_agecontroler.text.trim();
    final _name=_namecontroler.text.trim();
    if(_name.isEmpty || _age.isEmpty){
      return;
    }
      print('$_age,$_name');
       final _student =studentdetails(age: _age, name: _name);
     
   addstudent(_student);
  }
}