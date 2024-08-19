import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import '../../model/Item/Item.dart';
import '../../model/Item/ItemProvider.dart';
import '../../view/wedget/custom_tab_bar.dart';

class ExerciseScreen extends StatefulWidget {
  final String currentDay;

  ExerciseScreen({Key? key, required this.currentDay}) : super(key: key);

  @override
  State<ExerciseScreen> createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<ExerciseScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

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

  void _showDialog(Exercise exersize) {
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
                        image: AssetImage(exersize.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 26),
                  Text(
                    exersize.title,
                    style: GoogleFonts.changa(
                      fontSize: 24,
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  Text(
                    exersize.details,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    exersize.instructions.join(),
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                    textAlign: TextAlign.start,
                    textDirection: TextDirection
                        .rtl, // This sets the text direction to right-to-left
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Close the dialog
                  _controller.reset();
                },
                child: Text('Done'),
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
    final items =
        Provider.of<ItemProvider>(context).getItems(widget.currentDay);

    return Scaffold(
      appBar: AppBar(
        title: Text('Gym Page - ${widget.currentDay}'),
      ),
      body: items.isEmpty
          ? Center(child: Lottie.asset(
        'assets/animation/Animation - 1722762361849.json',
      ),

      )
          : ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: GestureDetector(
                    onTap: () => _showDialog(item),
                    child: Container(
                      height: 150,
                      width: double.infinity,
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
                          Container(
                            width: 150.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(item.image),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      item.title,
                                      style: GoogleFonts.changa(
                                        fontSize: 20,
                                        color: Colors.amber,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      item.details,
                                      style: GoogleFonts.changa(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.amber,
                                          shape: CircleBorder(),
                                          padding: EdgeInsets.all(8),
                                        ),
                                        child: Icon(Icons.remove),
                                        onPressed: () {
                                          Provider.of<ItemProvider>(context,
                                                  listen: false)
                                              .removeItem(
                                                  widget.currentDay, item);
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
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CustomTabBarDemo(pageId: widget.currentDay),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
