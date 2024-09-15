import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, left: 24, bottom: 24),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 240, 148, 142),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter Tips',
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 16),
              child: Text(
                'Build your career with Norhan Walid',
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Text(
              'septamper 15, 2024',
              style:
                  TextStyle(fontSize: 13, color: Colors.black.withOpacity(.6)),
            ),
          ),
        ],
      ),
    );
  }
}
