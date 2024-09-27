import 'package:flutter/material.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currIndex = 0;
  List<Color> color = [
    Color(0xffb99095),
    Color(0xfffcb5ac),
    Color(0xffb5e5cf),
    Color(0xff3d5b59),
    Color(0xff65463e),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: color.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currIndex = index;
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ColorItem(
                  color: color[index],
                  isactive: currIndex == index,
                ),
              ),
            );
          }),
    );
  }
}

class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key,
    required this.isactive,
    required this.color,
  });
  final bool isactive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isactive
        ? CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 36,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 40,
          );
  }
}
