import 'package:flutter/material.dart';

class SectionItem extends StatelessWidget {
  final String title;

  const SectionItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      child: ListTile(
        dense: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 8),
        title: Text(
          title,
          style: const TextStyle(fontSize: 14),
        ),
        trailing: const Icon(
          Icons.chevron_right,
          size: 18,
          color: Colors.grey,
        ),
      ),
    );
  }
}
