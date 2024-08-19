import 'package:flutter/animation.dart';

class Item {
  final String images;
  final String text3;
  final String text4;
  final String text5;

  Item({
    required this.images,
    required this.text3,
    required this.text4,
    required this.text5,
  });
}

class Exercise {
  final String image;
  final String title;
  final String details;
  final List<String> instructions;
  final VoidCallback? onAdd;

  Exercise({
    required this.image,
    required this.title,
    required this.details,
    required this.instructions,
    this.onAdd,
  });

  factory Exercise.fromJson(Map<String, dynamic> json) {
    return Exercise(
      image: json['image'] ?? '',
      title: json['title'] ?? '',
      details: json['details'] ?? '',
      instructions: json['instructions'] != null
          ? List<String>.from(json['instructions'])
          : [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'title': title,
      'details': details,
      'instructions': instructions,
    };
  }
}
