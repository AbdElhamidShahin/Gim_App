import 'package:flutter/material.dart';

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'BMI Calculator',
              style: TextStyle(color: Colors.amber, fontSize: 40),
            ),
          ),
          Bmi(),
        ],
      ),
    );
  }
}

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
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children:<Widget> [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                title,
                style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: TextField(
                keyboardType: TextInputType.number,
                onChanged: onChanged,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: hintText,
                  // validator: (value) {
                  //   if (value == null || value.isEmpty) {
                  //     return "Field cannot be empty";
                  //   } else if (value.length < 1) {
                  //     return "Must be at least 6 chars";
                  //   } else {
                  //     return null;
                  //   }
                 // },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Bmi extends StatefulWidget {
  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  double calculatedBMI = 0;
  double weight = 0;
  double height = 0;
  int age = 0; // تعريف المتغير الجديد هنا
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Continar(
              title: 'Age     ',
              hintText: 'Enter your age',
              onChanged: (value) => setState(() {
                age = int.tryParse(value) ?? 0;
              }),
            ),
            Continar(
              title: 'Height',
              hintText: 'Enter your height',
              onChanged: (value) => setState(() {
                height = double.tryParse(value) ?? 0;
              }),
            ),
            Continar(
              title: 'Weight',
              hintText: 'Enter your weight',
              onChanged: (value) => setState(() {
                weight = double.tryParse(value) ?? 0;
              }),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150, height: 50, // Set the desired width
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextButton(
                        onPressed: () {
                          // Implement functionality for Male button
                        },
                        child: const Text(
                          "Male",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  SizedBox(
                    width: 150, height: 50, // Set the desired width
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextButton(
                        onPressed: () {
                          // Implement functionality for Female button
                        },
                        child: const Text(
                          "Female",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 110,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        calculatedBMI = (weight / (height * height) * 1000);
                      });
                    },
                    child: Text(
                      'Calculate BMI',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 8),
              child: Text(
                'BMI:',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: Text(
                'BMI: ${calculatedBMI.toStringAsFixed(2)} ',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 8),
              child: Text(
                'Result:',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: Text(
                'Extreem:',
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
