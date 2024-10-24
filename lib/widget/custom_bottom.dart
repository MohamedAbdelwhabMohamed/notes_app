import 'package:flutter/material.dart';
import 'package:opp/helper/costoms.dart';

class CustomBotom extends StatelessWidget {
  const CustomBotom({super.key, this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        color: kprimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // زاوية مستديرة
        ),
        minWidth: MediaQuery.of(context).size.width,
        height: 55,
        onPressed: onPressed,
        child: const Text(
          'Add',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ));
  }
}
