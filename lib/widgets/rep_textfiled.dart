import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter0/utils/constainst.dart';

//classe qui va prendre l'icone, le text, le textfield et une autre icone
class RepTextFiled extends StatelessWidget {
  //const RepTextFiled({Key? key}) : super(key: key);
  final IconData icon;
  final Widget? suficon;
  final String text;

  RepTextFiled({
    required this.icon,
    required this.suficon,
    required this.text,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: gHeigh/15,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(icon,
            color: iconColor,
            size: 30,
            ),
            const SizedBox(width: 10,),
            SizedBox(height: 50,
            width: gWidth/1.3,
            child: TextField(
              readOnly: false,//sans faire sortir le clavier(erreur de marge)
              cursorColor: Colors.black,
              style:const TextStyle(color: Colors.black),
              showCursor: true,
              decoration: InputDecoration(
                suffixIcon: suficon,
                focusedBorder:const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)
                ),
                enabledBorder: const  UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey,width: 2)
                ),
                labelText: text,
                labelStyle:const TextStyle(color: Colors.grey,fontSize: 15, fontWeight: FontWeight.w400)
              ),
            ),
            )
          ],
        ),
      ),
    );
  }
}
