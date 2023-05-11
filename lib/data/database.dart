import 'package:hive/hive.dart';
class ToDoDataBase{

  List toDoList=[];



  final _myBox =Hive.box('mybox');

  //first time open this app use this method
  void createInitialData(){
    toDoList = [
      ["Esempio primo", false],
      ["Esempio secondo", true],
    ];

  }

  // load the database
  void  loadDataBase(){
  toDoList = _myBox.get('TODOLIST');
}
  //update the database
  void updateDataBase(){
    _myBox.put('TODOLIST', toDoList);

  }


}