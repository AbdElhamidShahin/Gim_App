import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/Item/Item.dart';

class CustomBosh extends StatefulWidget {
  const CustomBosh({
    Key? key,
    required this.images,
    required this.text3,
    required this.text4,
    required this.text5,
    this.onAddPressed,
  }) : super(key: key);

  final String images;
  final String text3;
  final String text4;
  final String text5;
  final void Function(Exercise)? onAddPressed;

  @override
  State<CustomBosh> createState() => _CustomBoshState();
}

class _CustomBoshState extends State<CustomBosh>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool isAdded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _showDialog() {
    _controller.forward();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ScaleTransition(
          scale: _animation,
          child: AlertDialog(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      image: DecorationImage(
                        image: AssetImage(widget.images),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    widget.text3,
                    style: GoogleFonts.changa(
                      fontSize: 24,
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  Text(
                    widget.text4,
                    style: GoogleFonts.changa(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    widget.text5,
                    style: GoogleFonts.changa(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.start,
                    textDirection: TextDirection.rtl, // This sets the text direction to right-to-left
                  ),

                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _controller.reset();
                },
                child: Text(
                  'Done',
                  style: GoogleFonts.changa(color: Colors.amber, fontSize: 20),
                ),
              ),
            ],
          ),
        );
      },
    ).then((_) {
      _controller.reset();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: GestureDetector(
        onTap: _showDialog,
        child: Container(
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              // The image
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  image: DecorationImage(
                    image: AssetImage(widget.images),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // The text
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          widget.text3,
                          style: GoogleFonts.changa(
                            fontSize: 20,
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          widget.text4,
                          style: GoogleFonts.changa(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        // Show IconButton only if onAddPressed is not null and not already added
                        if (widget.onAddPressed != null && !isAdded)
                          Align(
                            alignment: Alignment.centerRight,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.amber,
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(8),
                              ),
                              child: Icon(Icons.add, color: Colors.white),
                              onPressed: () {
                                final exercise = Exercise(
                                  image: widget.images,
                                  title: widget.text3,
                                  details: widget.text4,
                                  instructions: [widget.text5],
                                );
                                widget.onAddPressed!(exercise);
                                setState(() {
                                  isAdded = true;
                                });
                              },
                            ),
                          ),
                      ],
                    ),
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
