class CareerProposition {
  const CareerProposition({
    required this.title,
    required this.occupation,
    required this.teamSize,
    required this.description,
    required this.skills,
  });

  factory CareerProposition.fromJson(Map<String, dynamic> json) {
    return CareerProposition(
      title: json['title'] as String,
      occupation: json['occupation'] as String,
      teamSize: json['teamSize'] as String,
      description: json['description'] as String,
      skills: (json['skills'] as List<dynamic>).cast<String>(),
    );
  }

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

  factory CareerStep.fromJson(Map<String, dynamic> json) {
    return CareerStep(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      propositions: (json['propositions'] as List<dynamic>)
          .map((dynamic e) => CareerProposition.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  final String title;
  final String subtitle;
  final List<CareerProposition> propositions;
}
