import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Continar extends StatelessWidget {
  Continar({
    Key? key,
    required this.title,
    required this.hintText,
    this.onChanged,
  }) : super(key: key);

  final String title;
  final String hintText;
  final ValueChanged<String>? onChanged;
  static double emailRegex = 0;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFE8F5E9),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.50,
              child: TextFormField(
                style: TextStyle(color: Colors.black),
                keyboardType: TextInputType.number,
                onChanged: onChanged,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: hintText,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Field cannot be empty";
                  } else if (value.length < 1) {
                    return "Field cannot be empty";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                title,   textDirection: TextDirection
                  .rtl,
                style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class sizedBox extends StatelessWidget {
  const sizedBox(
      {super.key,
      required this.text,
      required this.width,
      required this.height,
      this.onPressed});
  final String text;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width, height: height, // Set the desired width
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextButton(
          onPressed: onPressed,
          child: Text(            textDirection: TextDirection
              .rtl,
            text,
            style: GoogleFonts.changa(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
      ),
    );
  }
}
