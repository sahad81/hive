import 'package:flutter/material.dart';
import 'package:flutter_application_5/db/model.dart';
import 'package:flutter_application_5/homescreen.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async { 
  WidgetsFlutterBinding.ensureInitialized();   
   await Hive.initFlutter();

   if(!Hive.isAdapterRegistered(studentdetailsAdapter().typeId)){
    Hive.registerAdapter(studentdetailsAdapter());
   }
   
  
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const homescreen()
    );
  }
}

