import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings_Text extends StatelessWidget {
  Settings_Text(
      {Key? key,
      required this.text,
      required this.icon1,
      required this.icon2,
      required this.onPressed})
      : super(key: key);

  final String text;
  final IconData icon1;
  final IconData icon2;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Icon(
                  icon1,
                  size: 24,
                ),
              ),
              Text(
                text,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              IconButton(onPressed: onPressed, icon: Icon(icon2)),
              const SizedBox(
                width: 15,
              ),
            ],
          ),
          const Divider(
              height: 0.1,
              color: Colors.grey,
              thickness: .5,
              indent: 30,
              endIndent: 30)
        ],
      ),
    );
  }
}
