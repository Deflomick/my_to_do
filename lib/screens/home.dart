import 'package:flutter/material.dart';
import 'package:my_to_do/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBgColor,
      appBar: _buildAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),

              ),
              child: TextField(
              decoration: InputDecoration(
              contentPadding: EdgeInsets.all(15),
              prefixIcon: Icon(Icons.search,color: tdBlack,)
              ),
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


}
