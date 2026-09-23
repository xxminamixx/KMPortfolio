import 'package:flutter/material.dart';
import 'package:km_portfolio/core/theme/app_text_style.dart';
import 'package:km_portfolio/core/utils/responsive.dart';
import 'package:km_portfolio/features/works/data/works_data.dart';
import 'package:km_portfolio/features/works/presentation/widgets/work_card.dart';

class WorksScreen extends StatelessWidget {
  const WorksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _mainWidget(context);
  }

  Widget _mainWidget(BuildContext context) {
    final bool isWide = context.isWide;
    final double maxWidth = MediaQuery.sizeOf(context).width / (isWide ? 2 : 1);

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
                    'Works',
                    style: AppTextStyle.notoSerif(
                      size: 36,
                    ),
                  ),
                ),
                Container(
                  constraints: BoxConstraints(
                    maxWidth: maxWidth,
                  ),
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: isWide ? 3 : 2,
                    childAspectRatio: 1.0,
                    crossAxisSpacing: 32,
                    mainAxisSpacing: 32,
                    children: works
                        .map((work) => WorkCard(work: work, isWide: isWide))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
