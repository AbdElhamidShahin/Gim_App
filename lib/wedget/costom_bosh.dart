import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/cart/Add_product.dart';

class CustomBosh extends StatelessWidget {
  const CustomBosh({
    Key? key,
    required this.images,
    required this.text3,
    required this.text4,
    // Declare the Product object here
  }) : super(key: key);

  final String images;
  final String text3;
  final String text4;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 0),
      child: InkWell(
        onTap: () {
          // Show the image in the same page when tapped
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                        decoration:BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: Image.asset(images)),
                    SizedBox(height: 20),
                    Text(
                      text3,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.amber,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      text4,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context); // Close the dialog
                    },
                    child: Text('Done'),
                  ),

                ],
                title:  TextButton(
                  onPressed: () {
                    Navigator.pop(context); // Close the dialog
                  },
                  child: Text('Close'),
                ) ,
              );
            },
          );
        },
        child: Container(
          height: 130,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.black26,
          ),
          child: Row(
            children: [
              //
              // The image
              Expanded(
                flex: 3,
                child: Container(
                  width: 150.0,
                  height: 100.0,
                  decoration: BoxDecoration(

                    shape: BoxShape.circle,
                    image: DecorationImage(
                      
                      fit: BoxFit.fill,
                      image: AssetImage(images),
                    ),
                  ),
                ),
              ),
              // Spacing between image and text
              const SizedBox(width: 10),
              // The text
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              text3,
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.amber,
                              ),
                            ),
                            const SizedBox(height: 14),
                            Text(
                              text4,
                              style: const TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
