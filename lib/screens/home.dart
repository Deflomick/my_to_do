import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../model/todo.dart';
import '../widgets/todo_item.dart';

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);

  final todoList=ToDo.todoList();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBgColor,
      appBar: _buildAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            searchBox(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 0,bottom: 15),
                    child: Text('Tutte le note',style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                  ),
                  for( ToDo todo in todoList)
                  ToDoItem(todo: todo, ),


                ],
              ),
            )
          ],
        )
    ),

    );
  }

  AppBar _buildAppBar(){
    return AppBar(
      backgroundColor: tdBgColor,
      elevation: 0,
      title:
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Icon(
          Icons.menu,
          color: tdBlack,
          size: 30,
        ),
        SizedBox(
          height: 40,
          width: 40,
          child: ClipRRect(
            child: Image.asset('assets/images/deflologo.png'),
            borderRadius: BorderRadius.circular(20),
          ),
        )
      ]),
    );

  }

  Widget searchBox() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),

      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: tdBlack,
            size: 15,

          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 15,
            minWidth: 15,
          ),
          border: InputBorder.none,
          hintText: 'Cerca',
          hintStyle: TextStyle(color: Colors.white54),
        ),
      ),
    );
  }


}
