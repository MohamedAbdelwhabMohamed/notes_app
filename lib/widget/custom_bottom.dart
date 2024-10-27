import 'package:flutter/material.dart';
import 'package:opp/helper/costoms.dart';

class CustomBotom extends StatelessWidget {
  const CustomBotom({super.key, this.onPressed, this.isloading = false});
  final void Function()? onPressed;
  final bool isloading;
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
        child: isloading
            ? SizedBox(
                height: 20,
                width: 20,
                child: const CircularProgressIndicator(
                  color: Colors.black,
                ),
              )
            : Text(
                'Add',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ));
  }
}
