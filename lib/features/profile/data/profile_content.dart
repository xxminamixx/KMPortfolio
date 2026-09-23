import 'package:km_portfolio/features/profile/domain/profile.dart';

final Profile profileContent = Profile(
  japaneseFields: const <ProfileField>[
    ProfileField(title: '名前', content: '南 京兵 (みなみ きょうへい)'),
    ProfileField(title: '居住', content: '東京都 / 神奈川県'),
    ProfileField(title: '趣味', content: 'ゲーム / アニメ / ごはん'),
  ],
  japaneseCareer: '''
公立はこだて未来大学で情報デザインを専攻、
UI/UX のアウトプット手段としてプログラミングを利用することが多かった背景からプログラマの道へ。
Objective-C, Swift, Kotlin, Dart(Flutter) を利用した iOS/Android アプリのリリースを経験。
要件定義/設計/デザイン/実装/リリース/分析 を一貫して経験。
''',
  englishFields: const <ProfileField>[
    ProfileField(title: 'Name', content: 'Minami Kyohei'),
    ProfileField(title: 'Residence', content: 'Tokyo / Kanagawa'),
    ProfileField(title: 'hobby', content: 'Game / Anime / Eat delicious food'),
  ],
  englishCareer: '''
I majored in information design at Future University-Hakodate,
From the background that programming was often used as a UI / UX output means to the programmer's path.
An SIer company that joined the company as a new graduate is assigned to an iOS project of a major service company.
After developing team apps in Objective-C and Swift, he has grown to be able to implement iOS by himself.
After changing jobs, I was assigned to develop iOS / Android apps at once, and Kotlin and Dart are also learning in good faith.
''',
);
