import 'package:flutter/cupertino.dart';
import 'package:flutter_application_5/db/model.dart';
import 'package:hive_flutter/hive_flutter.dart';

ValueNotifier <List<studentdetails>>studentlistnotifair=ValueNotifier([]);


 Future<void> addstudent(studentdetails value) async{

 // 
  

   final studen_db= await Hive.openBox<studentdetails>( 'student_db');
  final _id= await studen_db.add(value);
   value.id=_id;

studentlistnotifair.value.add(value);
  studentlistnotifair.notifyListeners();
}
Future<void> getallstudent()async{

  final studentdb=await Hive.openBox<studentdetails>('student_db');
  studentlistnotifair.value.clear();

    studentlistnotifair.value.addAll( studentdb.values);
    studentlistnotifair.notifyListeners();
}

Future <void> deletedetails(int id)async{
 final studentdb=await Hive.openBox<studentdetails>('student_db'); 
      await studentdb.delete(id);
      getallstudent();
}