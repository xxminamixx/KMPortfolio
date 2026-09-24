import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:km_portfolio/features/career/data/career_data.dart';
import 'package:km_portfolio/features/career/domain/career_step.dart';

final StateProvider<int> careerStepProvider = StateProvider<int>((Ref ref) => 0);

final FutureProvider<List<CareerStep>> careerStepsProvider =
    FutureProvider<List<CareerStep>>((Ref ref) => loadCareerSteps());
