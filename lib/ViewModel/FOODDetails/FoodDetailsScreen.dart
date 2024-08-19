import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:lottie/lottie.dart';

import '../../model/dio/dio.dart';
import '../../view/wedget/CustomGauge.dart';

class FoodDetailsScreen extends StatefulWidget {
  @override
  _FoodDetailsScreenState createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {
  final TextEditingController _controller = TextEditingController();
  double _calories = 0.0;
  double _fat = 0.0;
  double _carbs = 0.0;
  String _label = '';
  bool _showImage = true;

  double _protein = 0.0; // تأكد من أن _protein هو من نوع double
  bool _isLoading = false;
  String _errorMessage = '';

  void _getFoodDetails() async {
    setState(() {
      _isLoading = true;
      _errorMessage = '';
      _showImage = false; // إخفاء الصورة عند بدء جلب البيانات

    });

    final newsService = NewsService(Dio());

    try {
      final details = await newsService.getFoodDetails(_controller.text);
      setState(() {
        _calories = double.parse(details['calories']);
        _fat = double.parse(details['fat']);

        _protein = double.parse(details['protein']);
        _carbs = double.parse(details['carbs']);
        _label = details['label'];
      });
    } catch (error) {
      setState(() {
        _errorMessage = error.toString();
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تفاصيل الطعام'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  labelText: 'أدخل اسم الطعام',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  fillColor: Color(0xffcef1ef), // لون خلفية الحقل
                  filled: true,
                ),
              ),

              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _getFoodDetails,
                child: Text('احصل على تفاصيل الطعام'),
              ),
              SizedBox(height: 100),
              if (_showImage) // عرض الرسوم المتحركة فقط إذا كان _showImage صحيحاً
                Lottie.asset(
                  'assets/animation/123.json', // تأكد من استخدام مسار صحيح لملف Lottie
                  height: 200,
                ),
              SizedBox(height: 16),
              if (_isLoading) CircularProgressIndicator(),
              if (_errorMessage.isNotEmpty)
                Text(_errorMessage, style: TextStyle(color: Colors.red)),
              if (_label.isNotEmpty)
                Column(
                  children: [
                    Text(
                      'اسم الطعام:',
                      style:
                      TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "$_label ",
                      style: TextStyle(fontSize: 22, color: Colors.green[300]),
                    ),
                  ],
                ),
              if (_calories > 0 && !_isLoading && _errorMessage.isEmpty)
                CustomGauge(caloriesValue: _calories),
              if (_calories > 0 && !_isLoading && _errorMessage.isEmpty)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GridView.count(
                      shrinkWrap: true,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 3,
                      children: <Widget>[
                        Column(
                          children: [
                            Text(
                              'الدهون:',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${_fat.toStringAsFixed(2)} جرام',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'البروتين:',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${_protein.toStringAsFixed(2)} جرام',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'الكربوهيدرات:',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${_carbs.toStringAsFixed(2)} جرام',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
