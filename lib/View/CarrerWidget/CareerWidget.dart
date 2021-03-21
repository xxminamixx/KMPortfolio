import 'package:flutter/material.dart';
import 'package:km_portfolio/Utility/Const.dart';
import 'package:km_portfolio/Utility/KMTextStyle.dart';
import 'package:km_portfolio/Utility/Screen.dart';
import 'package:km_portfolio/View/CarrerWidget/CareerBloc.dart';
import 'package:km_portfolio/View/CarrerWidget/CareerBlocProvider.dart';

// ignore: must_be_immutable
class CareerWidget extends StatelessWidget {
  CareerWidget({Key? key}) : super(key: key);

  CareerBloc? _bloc;

  static CareerBlocProvider instance() {
    return CareerBlocProvider(
      CareerWidget(),
    );
  }

  @override
  Widget build(BuildContext context) {
    _bloc = CareerBlocProvider.of(context)?.bloc;

    return _mainWidget();
  }

  Widget _mainWidget() {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
              width: Screen.size?.width,
              margin: const EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  Text(
                    'Career',
                    style: KMTextStyle.notoSerif(size: 36),
                  ),
                  _stepper()
                ],
              ))),
    );
  }

  Widget _stepper() {
    return StreamBuilder<int>(
      stream: _bloc?.stepperStream,
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
        return Stepper(
          physics: const ClampingScrollPhysics(),
          controlsBuilder: (BuildContext context,
              {VoidCallback? onStepContinue, VoidCallback? onStepCancel}) {
            return Row(
              children: <Widget>[
                Container(
                  child: null,
                ),
                Container(
                  child: null,
                ),
              ],
            );
          },
          currentStep: snapshot.hasData ? snapshot.data ?? 0 : 0,
          onStepTapped: (int step) => _bloc?.stepperSink.add(step),
          type: StepperType.vertical,
          steps: _steps(snapshot.data ?? 0),
        );
      },
    );
  }

  List<Step> _steps(int index) {
    return <Step>[
      Step(
          title: const Text('公立はこだて未来大学卒業'),
          subtitle: const Text('2016年 3月'),
          isActive: index == 0,
          content: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _proposition(
                  title: 'デザイン・プログラミングの基礎学習',
                  occupation: '学生',
                  teamSize: 'なし',
                  description:
                      '情報デザインを専攻しUI/UXの基礎を学習。Illustratorを利用し UX Map/Infographics/Pictogram の制作も行った',
                  skills: <String>[
                    'Processing',
                    'Java',
                    'C',
                    'HTML',
                    'CSS',
                    'javascript',
                    'Illustrator',
                    'Blender',
                  ])
            ],
          )),
      Step(
          title: const Text('システムアナライズ株式会社 入社'),
          subtitle: const Text('2016　年 4月'),
          isActive: index == 1,
          content: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _proposition(
                  title: '不動産情報アプリ開発',
                  occupation: 'iOS エンジニア',
                  teamSize: '10 ~ 15人',
                  description: step2Career,
                  skills: <String>[
                    'Swift',
                    'Objective-C',
                    'Git',
                    'Github',
                    'Jenkins',
                    'Google Analytics'
                  ])
            ],
          )),
      Step(
          title: const Text('システムアナライズ株式会社 退社'),
          subtitle: const Text('2018　年 3月'),
          isActive: index == 2,
          content: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[],
          )),
      Step(
          title: const Text('meuron株式会社 入社'),
          subtitle: const Text('2018年 4月'),
          isActive: index == 3,
          content: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _proposition(
                  title: 'クラフトビール 定期配送サビース iOS/Androidアプリ開発',
                  occupation: 'iOS/Android エンジニア',
                  teamSize: '1人',
                  description:
                      'iOS/Android アプリの開発をひとりで担当。設計からリリース・一部デザインまで任させる。\nFlutterでの開発にも挑戦しGoogle Playへの公開経験を積む。',
                  skills: <String>[
                    'Swift',
                    'Dart',
                    'Flutter',
                    'Github',
                    'Bitrise',
                    'Firebase',
                    'BigQuery'
                  ]),
              Container(
                height: 0.5,
                width: 60,
                color: Colors.grey,
                margin: const EdgeInsets.only(top: 32, bottom: 32),
              ),
              _proposition(
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
                  ])
            ],
          )),
    ];
  }

  Widget _proposition(
      {@required String? title,
      @required String? occupation,
      @required String? teamSize,
      @required String? description,
      @required List<String>? skills}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(bottom: 16),
          child: Text(
            title ?? '',
            style: KMTextStyle.lato(size: 24, isBold: true),
          ),
        ),
        _cell(title: '職種', content: occupation),
        _cell(title: 'チーム規模', content: teamSize),
        Container(
          margin: const EdgeInsets.only(bottom: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '利用技術',
                style: KMTextStyle.lato(size: 14, isBold: true),
              ),
              Wrap(
                direction: Axis.horizontal,
                spacing: 8,
                runSpacing: 8,
                children: _chips(skills),
              ),
            ],
          ),
        ),
        _cell(title: '概要', content: description),
      ],
    );
  }

  Widget _cell({
    @required String? title,
    @required String? content,
  }) {
    return Container(
        margin: const EdgeInsets.only(bottom: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title ?? '',
              style: KMTextStyle.lato(size: 14, isBold: true),
            ),
            Text(
              content ?? '',
              style: KMTextStyle.lato(size: 14),
            )
          ],
        ));
  }

  List<Widget> _chips(List<String>? skills) {
    if (skills?.isEmpty ?? true)
      return <Widget>[];

    if (skills == null || skills.isEmpty)
      return <Widget>[];

    return skills.map((String skill) => Chip(label: Text(skill))).toList();
  }
}
