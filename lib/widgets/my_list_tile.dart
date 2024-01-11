import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String title;
  final void Function() onTap;
  const MyListTile({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        onTap: onTap,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
        ),
        tileColor: Colors.grey.shade200,
        trailing: Icon(
          Icons.chevron_right,
          color: Colors.purple.shade500,
        ),
        leading: Container(
          width: 20,
          height: 20,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.purpleAccent,
          ),
        ),
      ),
    );
  }
}
