import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<Map<String, dynamic>> getFoodDetails(String food) async {
    try {
      var response = await dio.get(
          'https://api.edamam.com/api/food-database/v2/parser?ingr=$food&app_id=c022070b&app_key=dcda98c1bc8b9b4473c336b4f4966639');

      Map<String, dynamic> jsonData = response.data;
      if (jsonData['hints'] != null && jsonData['hints'].isNotEmpty) {
        final nutrients = jsonData['hints'][0]['food']['nutrients'];
        final label = jsonData['hints'][0]['food']['label']?.toString() ?? 'N/A';

        return {
          'calories': nutrients['ENERC_KCAL']?.toString() ?? 'N/A',
          'fat': nutrients['FAT']?.toString() ?? 'N/A',
          'protein': nutrients['PROCNT']?.toString() ?? 'N/A',
          'carbs': nutrients['CHOCDF']?.toString() ?? 'N/A',
          'label': label,
        };
      } else {
        throw Exception('No details found for this food');
      }
    } catch (error) {
      throw ('error network ');
    }
  }
}
