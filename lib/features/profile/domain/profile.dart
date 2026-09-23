class ProfileField {
  const ProfileField({required this.title, required this.content});

  final String title;
  final String content;
}

class Profile {
  const Profile({
    required this.japaneseFields,
    required this.japaneseCareer,
    required this.englishFields,
    required this.englishCareer,
  });

  final List<ProfileField> japaneseFields;
  final String japaneseCareer;
  final List<ProfileField> englishFields;
  final String englishCareer;
}
