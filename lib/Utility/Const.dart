// MARK: StringResources

final RouteName route = RouteName();
final URL url = URL();

const String profileCareer =
'''
公立はこだて未来大学で情報デザインを専攻、
UI/UX のアウトプット手段としてプログラミングを利用することが多かった背景からプログラマの道へ。
Objective-C, Swift, Kotlin, Dart(Flutter) を利用した iOS/Android アプリのリリースを経験。
要件定義/設計/デザイン/実装/リリース/分析 を一貫して経験。
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
iPhone X の発売時期も重なりStoryboardベースのSafeAreaの対応や、デザイナーさんとコミュニケーションを取りながらUI/UX面の実装に多く携わる。
''';

const String step3Career =
'''
iOS/Android アプリの開発を担当。アプリ開発者が一人であったため、要件定義/設計/デザイン/リリース/分析 を日常的に行い、
Analyticsの数字から次期施策を創出するサイクルを周した。
Flutter(Dart)でのプロダクト開発にも挑戦しC向けAndroidアプリのGoogle Play公開経験を積む。
''';

class RouteName {
  final String root = '/';
  final String profile = '/profile';
  final String career = '/career';
  final String works = '/works';
  final String skills = '/skills';
  final String contact = '/contact';
}

class URL {
  final String profileIcon = 'https://firebasestorage.googleapis.com/v0/b/kmportfolio-701d8.appspot.com/o/images%2FIcon.png?alt=media&token=3852f09c-5417-4022-ac4c-5ea1e74e5b04';
}