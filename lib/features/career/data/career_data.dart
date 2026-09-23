import 'package:km_portfolio/features/career/domain/career_step.dart';

final List<CareerStep> careerSteps = <CareerStep>[
  const CareerStep(
    title: '株式会社サイバーエージェント 入社',
    subtitle: '2021/05 ~',
    propositions: <CareerProposition>[
      CareerProposition(
        title: 'Ameba ブログ for iOS',
        occupation: 'iOS エンジニア / PjM',
        teamSize: '5 ~ 10人',
        description:
            'ICとしてプロダクト開発をする傍ら、新人の育成やの経験を積む。時にはプロジェクトの進行・管理を行うためプロジェクトマネージャーとしても事業施策を推進。',
        skills: <String>[
          'Swift',
          'Github',
          'Namespace',
          'Firebase',
          'TCA(The Composable Architecture)',
          'RxSwift',
          'XcodeGen',
          'Swift Package Manager',
        ],
      ),
    ],
  ),
  const CareerStep(
    title: 'meuron株式会社',
    subtitle: '2018/04 ~ 2021/04',
    propositions: <CareerProposition>[
      CareerProposition(
        title: 'クラフトビール 定期配送サビース iOS/Androidアプリ開発',
        occupation: 'iOS/Android エンジニア',
        teamSize: '1人',
        description: '''
iOS/Android アプリの開発を担当。アプリ開発者が一人であったため、要件定義/設計/デザイン/リリース/分析 を日常的に行い、
Analyticsの数字から次期施策を創出するサイクルを周した。
Flutter(Dart)でのプロダクト開発にも挑戦しC向けAndroidアプリのGoogle Play公開経験を積む。
''',
        skills: <String>[
          'Swift',
          'Dart',
          'Flutter',
          'Github',
          'Bitrise',
          'Firebase',
          'BigQuery',
        ],
      ),
      CareerProposition(
        title: 'ヘルスケア・フードカテゴリアプリ各種開発',
        occupation: 'iOS/Android エンジニア',
        teamSize: '1人',
        description:
            'SwiftでのiOS開発の側、Androidアプリの業務委託を統括・自身もKotlinでも開発経験を積む。\n未熟ながらAndroid開発もUI実装・API疎通等大まかにできる様になりGoogle Playへの公開まで経験。',
        skills: <String>[
          'Swift',
          'Kotlin',
          'Github',
          'Bitrise',
          'Firebase',
        ],
      ),
    ],
  ),
  const CareerStep(
    title: 'システムアナライズ株式会社',
    subtitle: '2016/04 ~ 2018/03',
    propositions: <CareerProposition>[
      CareerProposition(
        title: '不動産情報アプリ開発',
        occupation: 'iOS エンジニア',
        teamSize: '10 ~ 15人',
        description: '''
SIerとして大手サービス企業のiOS案件に配属され、Objective-C, Swift での開発基礎を学ぶ。
iPhone X の発売時期も重なりStoryboardベースのSafeAreaの対応や、デザイナーさんとコミュニケーションを取りながらUI/UX面の実装に多く携わる。
''',
        skills: <String>[
          'Swift',
          'Objective-C',
          'Git',
          'Github',
          'Jenkins',
          'Google Analytics',
        ],
      ),
    ],
  ),
  const CareerStep(
    title: '公立はこだて未来大学',
    subtitle: '2012/04 ~ 2016/03',
    propositions: <CareerProposition>[
      CareerProposition(
        title: 'デザイン・プログラミングの基礎学習',
        occupation: '学生',
        teamSize: 'なし',
        description: '情報デザインを専攻しUI/UXの基礎を学習。Illustratorを利用し UX Map/Infographics/Pictogram の制作も行った',
        skills: <String>[
          'Processing',
          'Java',
          'C',
          'HTML',
          'CSS',
          'javascript',
          'Illustrator',
          'Blender',
        ],
      ),
    ],
  ),
];
