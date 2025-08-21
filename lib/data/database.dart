import 'package:hive/hive.dart';

class ToDoDatabase {
  List toDoList = [];

  //reference the box
  final _myBox = Hive.box('mybox');

  //run this method if this is thge first time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Morning Exercise", false],
      ["Work on project", false]
    ];
  }

  //load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
