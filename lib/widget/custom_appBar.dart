// ignore_for_file: use_full_hex_values_for_flutter_colors, file_names

import 'package:flutter/material.dart';
import 'package:opp/widget/costom_Icon.dart';

class CostomAppbar extends StatelessWidget {
  const CostomAppbar({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Text(title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
          const Spacer(),
          CostomIcon(
            icon: icon,
          )
        ],
      ),
    ));
  }
}
