import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../view/wedget/CustomContinar.dart';

class Culcolatecounting extends StatefulWidget {
  const Culcolatecounting({super.key});

  @override
  State<Culcolatecounting> createState() => _CulcolatecountingState();
}

class _CulcolatecountingState extends State<Culcolatecounting> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  double height = 0;
  double age = 0;
  double weight = 0;
  String activityLevel = "";
  String gender = "";
  double result = 0;
  double finalResult = 0;

  void calculateIBW() {
    if (height > 0 && weight > 0 && age > 0) {
      setState(() {
        if (gender == "MALE") {
          result = 66 + (13.7 * weight) + (5 * height) - (6.8 * age);
        } else if (gender == "FEMALE") {
          result = 655 + (9.6 * weight) + (1.8 * height) - (4.7 * age);
        } else {
          result = 0;
        }
      });
    }
  }

  void calculateFinalResult() {
    calculateIBW();
    if (result > 0) {
      setState(() {
        switch (activityLevel) {
          case "culc1":
            finalResult = result * 1.2;
            break;
          case "culc2":
            finalResult = result * 1.375;
            break;
          case "culc3":
            finalResult = result * 1.55;
            break;
          case "culc4":
            finalResult = result * 1.725;
            break;
          case "culc5":
            finalResult = result * 1.9;
            break;
          default:
            finalResult = 0;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  'حساب السعرات الحرارية',
                  style: GoogleFonts.changa(
                      color: Colors.green[100], fontSize: 28),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFE8F5E9),
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Continar(
                        hintText: 'أدخل طولك (سم)',
                        title: 'الطول',
                        onChanged: (value) => setState(() {
                          height = double.tryParse(value) ?? 0;
                        }),
                      ),
                      Continar(
                        hintText: 'أدخل عمرك',
                        title: 'العمر',
                        onChanged: (value) => setState(() {
                          age = double.tryParse(value) ?? 0;
                        }),
                      ),
                      Continar(
                        hintText: 'أدخل وزنك (كجم)',
                        title: 'الوزن',
                        onChanged: (value) => setState(() {
                          weight = double.tryParse(value) ?? 0;
                        }),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.50,
                              child: DropdownButtonFormField(
                                icon: Icon(Icons.keyboard_arrow_down_sharp),
                                onChanged: (String? value) {
                                  setState(() {
                                    gender = value!;
                                  });
                                },
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "النوع",
                                ),
                                items: const [
                                  DropdownMenuItem(
                                    child: Text("ذكر"),
                                    value: "MALE",
                                  ),
                                  DropdownMenuItem(
                                    child: Text("أنثى"),
                                    value: "FEMALE",
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'النوع',
                              style: GoogleFonts.changa(
                                  color: Colors.black87,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.50,
                              child: DropdownButtonFormField(
                                icon: Icon(Icons.keyboard_arrow_down_sharp),
                                onChanged: (String? value) {
                                  setState(() {
                                    activityLevel = value!;
                                  });
                                },
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: " النشاط",
                                ),
                                items: const [
                                  DropdownMenuItem(
                                    child: Text("قليل النشاط"),
                                    value: "culc1",
                                  ),
                                  DropdownMenuItem(
                                    child: Text("نشاط خفيف"),
                                    value: "culc2",
                                  ),
                                  DropdownMenuItem(
                                    child: Text("نشاط معتدل"),
                                    value: "culc3",
                                  ),
                                  DropdownMenuItem(
                                    child: Text("نشاط كبير"),
                                    value: "culc4",
                                  ),
                                  DropdownMenuItem(
                                    child: Text("نشاط شديد"),
                                    value: "culc5",
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              ' النشاط',
                              style: GoogleFonts.changa(
                                  color: Colors.black87,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        child: sizedBox(
                          text: 'احسب السعرات الحرارية',
                          width: double.infinity,
                          height: 71,
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              calculateFinalResult(); // استدعاء الطريقة بشكل صحيح
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [  Text(
                            finalResult.toStringAsFixed(2),
                            style: TextStyle(fontSize: 20),
                          ),
                            Text(
                              ' : الوزن المثالي',
                              style: GoogleFonts.changa(
                                  color: Colors.black87,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(height: 70),
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
