import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:km_portfolio/core/constants/assets.dart';
import 'package:km_portfolio/features/career/domain/career_step.dart';

Future<List<CareerStep>> loadCareerSteps() async {
  final String jsonString = await rootBundle.loadString(asset.careerSteps);
  final List<dynamic> jsonList = jsonDecode(jsonString) as List<dynamic>;

  return jsonList
      .map((dynamic json) => CareerStep.fromJson(json as Map<String, dynamic>))
      .toList();
}
