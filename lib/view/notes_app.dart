import 'package:flutter/material.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0303030),
      appBar: AppBar(
        backgroundColor: Color(0xFF0303030),
        title: const Text(
          'Notes',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Container(
              margin: EdgeInsets.only(right: 10),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Color(0xFF3B3B3),
                  borderRadius: BorderRadius.circular(10)),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  )))
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFFFCD7A),
                  borderRadius: BorderRadius.circular(30)),
              width: 100,
              height: 200,
            ),
          )
        ],
      ),
    );
  }
}
