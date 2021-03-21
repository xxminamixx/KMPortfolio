// MARK: StringResources

final RouteName route = RouteName();

const String profileCareer =
'''
公立はこだて未来大学で情報デザインを専攻、
UI/UX のアウトプット手段としてプログラミングを利用することが多かった背景からプログラマの道へ。
新卒で入社したSIer企業にて大手サービス企業のiOS案件に配属される。
Objective-C, Swift でのチームアプリ開発を経て、ひとりでiOSに関する一通りの実装ができるまで成長。
転職の後、iOS/Android アプリの開発を一挙に任されるようになり、Kotlin, Dart も誠意学習中。
''';

const String profileCareerEn =
'''
I majored in information design at Future University-Hakodate,
From the background that programming was often used as a UI / UX output means to the programmer's path.
An SIer company that joined the company as a new graduate is assigned to an iOS project of a major service company.
After developing team apps in Objective-C and Swift, he has grown to be able to implement iOS by himself.
After changing jobs, I was assigned to develop iOS / Android apps at once, and Kotlin and Dart are also learning in good faith.
''';

const String step2Career =
'''
SIerとして大手サービス企業のiOS案件に配属され、Objective-C, Swift での開発基礎を学ぶ。
iPhone X の発売時期も重なりSafeAreaの対応や、デザイナさんと相談しながらのUI面の実装に多く関わることができた。
''';

class RouteName {
  final String root = '/';
  final String profile = '/profile';
  final String career = '/career';
  final String works = '/works';
  final String skills = '/skills';
  final String contact = '/contact';
}