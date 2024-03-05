import 'package:flutter/material.dart';
class Cust_text extends StatelessWidget {
  Icon icon;
  String label;
  bool obscure;

  Cust_text({
    super.key,
    required this.icon,
    required this.label,
    required this.obscure
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:25),
      child: TextField(
        obscureText: obscure,
        decoration: InputDecoration(
          //border: InputBorder.none,
            filled: true,
            labelText: label,
            fillColor: Colors.deepPurpleAccent.shade100,
            prefixIcon: icon,
            enabled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),

            )

        ),
      ),
    );
  }
}
