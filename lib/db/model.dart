import 'package:hive_flutter/adapters.dart';
part 'model.g.dart';


@HiveType(typeId:  1)


class studentdetails  {
@HiveField(0)
 int? id;

  @HiveField(1) 
final String age;
@HiveField(2)
final String name;

  studentdetails({this.id, required this.age, required this.name});

}