import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:km_portfolio/core/theme/app_text_style.dart';
import 'package:km_portfolio/features/career/application/career_step_provider.dart';
import 'package:km_portfolio/features/career/domain/career_step.dart';
import 'package:km_portfolio/features/career/presentation/widgets/career_proposition.dart';

class CareerScreen extends ConsumerWidget {
  const CareerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _mainWidget(ref);
  }

  Widget _mainWidget(WidgetRef ref) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
              margin: const EdgeInsets.all(64),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(bottom: 64),
                      child: Text(
                        'Career',
                        style: AppTextStyle.notoSerif(size: 36),
                      ),
                    ),
                    _stepper(ref)
                  ],
                ),
              ),
          ),
      ),
    );
  }

  Widget _stepper(WidgetRef ref) {
    final AsyncValue<List<CareerStep>> careerSteps = ref.watch(careerStepsProvider);

    return careerSteps.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (Object error, StackTrace stackTrace) => Center(child: Text('$error')),
      data: (List<CareerStep> steps) => _stepperContent(ref, steps),
    );
  }

  Widget _stepperContent(WidgetRef ref, List<CareerStep> steps) {
    final int currentStep = ref.watch(careerStepProvider);

    return Stepper(
      physics: const ClampingScrollPhysics(),
      controlsBuilder: (BuildContext context, ControlsDetails details) {
        return const Row();
      },
      currentStep: currentStep,
      onStepTapped: (int step) => ref.read(careerStepProvider.notifier).state = step,
      type: StepperType.vertical,
      steps: <Step>[
        for (int index = 0; index < steps.length; index++)
          _step(steps[index], isActive: index == currentStep),
      ],
    );
  }

  Step _step(CareerStep step, {required bool isActive}) {
    return Step(
      title: Text(step.title),
      subtitle: Text(step.subtitle),
      isActive: isActive,
      content: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            for (int index = 0; index < step.propositions.length; index++) ...<Widget>[
              if (index > 0)
                Container(
                  height: 0.5,
                  width: 60,
                  color: Colors.grey,
                  margin: const EdgeInsets.only(top: 32, bottom: 32),
                ),
              CareerPropositionView(proposition: step.propositions[index]),
            ],
          ],
        ),
      ),
    );
  }
}
