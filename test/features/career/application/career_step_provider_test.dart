import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:km_portfolio/features/career/application/career_step_provider.dart';

void main() {
  test('careerStepProvider starts at 0 and updates when written to', () {
    final ProviderContainer container = ProviderContainer();
    addTearDown(container.dispose);

    expect(container.read(careerStepProvider), 0);

    container.read(careerStepProvider.notifier).state = 2;

    expect(container.read(careerStepProvider), 2);
  });
}
