import 'package:flutter/material.dart';

class Cust_tile extends StatelessWidget {
  String leading;
  Icon icon;
  final VoidCallback onPressed;
   Cust_tile({
    super.key,
     required this.icon,
     required this.leading,
     required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ListTile(
        onTap:onPressed ,
        leading: icon,
        title: Text(leading),
      ),
    );
  }
}
