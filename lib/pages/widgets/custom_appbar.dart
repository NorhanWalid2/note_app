import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Row(
        children: [
          Text(
            'Notes',
            style: TextStyle(fontSize: 35),
          ),
          SizedBox(
            width: 215,
          ),
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.04),
                borderRadius: BorderRadius.circular(16)),
            child: Center(
              child: Icon(Icons.search),
            ),
          ),
        ],
      ),
    );
  }
}
