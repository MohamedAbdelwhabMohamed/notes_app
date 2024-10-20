import 'package:flutter/material.dart';
import 'package:opp/helper/costom_color.dart';

class CustomBotom extends StatelessWidget {
  const CustomBotom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        color: KprimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // زاوية مستديرة
        ),
        minWidth: MediaQuery.of(context).size.width,
        height: 55,
        onPressed: () {},
        child: const Text(
          'Add',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ));
  }
}
