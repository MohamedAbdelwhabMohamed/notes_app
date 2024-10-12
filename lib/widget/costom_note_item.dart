import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesItemBady extends StatelessWidget {
  const NotesItemBady({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: const EdgeInsets.only(top: 24, left: 24, bottom: 24),
        decoration: BoxDecoration(
            color: const Color(0xFFFFCD7A),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter Tips',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Text(
                  'Build your Career with  Mohamed Abdelwhab',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 12,
                  ),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    size: 24,
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                'January 1, 2022',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
