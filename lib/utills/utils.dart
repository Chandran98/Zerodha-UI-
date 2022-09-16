import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.only(left: 1,right: 1),
        child: SizedBox(
          width: 120,
          child: Center(
            child: Text(
              title,
              style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
