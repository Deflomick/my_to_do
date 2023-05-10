import 'package:flutter/material.dart';
import 'package:my_to_do/widgets/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

   DialogBox({Key? key,required this.controller,required this.onCancel,required this.onSave}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(

      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Aggiungi nota'
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(text: 'Salva', onPressed: onSave),
                const SizedBox(
                  width: 8,
                ),
                MyButton(text: 'Cancella', onPressed: onCancel),
              ],
            )
          ],
        ),


      ),
      backgroundColor: Colors.yellow[300],

    );
  }
}
