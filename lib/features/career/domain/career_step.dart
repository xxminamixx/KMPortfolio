class CareerProposition {
  const CareerProposition({
    required this.title,
    required this.occupation,
    required this.teamSize,
    required this.description,
    required this.skills,
  });

  final String title;
  final String occupation;
  final String teamSize;
  final String description;
  final List<String> skills;
}

class CareerStep {
  const CareerStep({
    required this.title,
    required this.subtitle,
    required this.propositions,
  });

  final String title;
  final String subtitle;
  final List<CareerProposition> propositions;
}
