import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.image,
    required this.text1,
    required this.text2, required this.routeToNavigate,
  }) : super(key: key);
  final Widget routeToNavigate;  final String image;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: GestureDetector(
        onTap: () {
          // Handle tap event here
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  routeToNavigate),
          );
        },
        child: Container(
          height: 160,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.black26,
          ),
          child: Row(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60.0),
                      topRight: Radius.circular(0.0),
                      bottomRight: Radius.circular(60.0),
                      bottomLeft: Radius.circular(0.0),
                    ),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                      width: 200,
                      height: 160,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  children: [
                    Text(
                      text1,
                      style: TextStyle(fontSize: 28),
                    ),
                    Column(
                      children: [
                        Text(
                          text2,
                          style: TextStyle(fontSize: 24),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
