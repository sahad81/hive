import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_5/db/model.dart';
import 'package:flutter_application_5/funtions/funtions.dart';

class listv extends StatelessWidget {
  const listv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: studentlistnotifair,
      builder:(BuildContext cnx , List<studentdetails> studentlist  , Widget? child ){
        return ListView.separated(
          itemBuilder:(context,index){
final data =studentlist[index]; 
        return ListTile(
          trailing: IconButton(onPressed: (){
            if(data.id !=null){
         deletedetails(data.id!) ;
       
            }
            
         }, icon:Icon(Icons.delete_sweep_outlined)),
          title: Text(data.name),
          subtitle: Text(data.age),
        );
      } ,
      
      
       separatorBuilder: (cnt,intex){
        return Divider();
      },
      
      
       itemCount: studentlist.length);
      } 
    ,
    
    );

    
  
    
  }
}