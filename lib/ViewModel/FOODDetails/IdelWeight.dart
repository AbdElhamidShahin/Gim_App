import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../view/wedget/CustomContinar.dart';

class Idelweight extends StatefulWidget {
  const Idelweight({
    super.key,
  });

  @override
  State<Idelweight> createState() => _IdelweightState();
}

class _IdelweightState extends State<Idelweight> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  double height = 0;
  String gender = "";
  double result = 0;
  void calculateIBW() {
    setState(() {
      if (height > 0) {
        if (gender == "MALE") {
          result = 22 * (height / 100) * (height / 100);
        } else if (gender == "FEMALE") {
          result = 22 * ((height - 10) / 100) * ((height - 10) / 100);
        } else {
          result = 0; // التعامل مع حالة عدم اختيار الجنس
        }
      } else {
        result = 0;
      }
    });
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
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  'الوزن المثالي',
                  style: GoogleFonts.changa(
                      color: Colors.green[100], fontSize: 40),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFE8F5E9),
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 70,
                      ),
                      Continar(
                        hintText: 'أدخل طولك',
                        title: 'الطول',
                        onChanged: (value) => setState(() {
                          height = double.tryParse(value) ?? 0;
                        }),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.50,
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
                                        child: Text(
                                          "ذكر",
                                        ),
                                        value: "MALE",
                                      ),
                                      DropdownMenuItem(
                                        child: Text(
                                          "أنثى",
                                        ),
                                        value: "FEMALE",
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'النوع',
                              style: GoogleFonts.changa(
                                  color: Colors.black87,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        child: sizedBox(
                          text: 'الوزن المثالي',
                          width: double.infinity,
                          height: 71,
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              calculateIBW(); // استدعاء الطريقة بشكل صحيح
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              result.toStringAsFixed(2),
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              'الوزن المثالي  :   ',
                              textDirection: TextDirection.rtl,
                              style: GoogleFonts.changa(
                                  color: Colors.black87,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 70,
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
