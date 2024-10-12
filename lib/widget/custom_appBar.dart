// ignore_for_file: use_full_hex_values_for_flutter_colors, file_names

import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Notes',
        style: TextStyle(color: Colors.white),
      ),
      actions: [
        Container(
            margin: const EdgeInsets.only(right: 10),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: const Color(0xFF3B3B3),
                borderRadius: BorderRadius.circular(15)),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                )))
      ],
    );
  }
}
