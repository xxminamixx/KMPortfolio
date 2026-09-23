import 'package:flutter/material.dart';
import 'package:km_portfolio/core/theme/app_text_style.dart';
import 'package:km_portfolio/features/career/domain/career_step.dart';

class CareerPropositionView extends StatelessWidget {
  const CareerPropositionView({super.key, required this.proposition});

  final CareerProposition proposition;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(bottom: 16),
          child: Text(
            proposition.title,
            style: AppTextStyle.lato(size: 24, isBold: true),
          ),
        ),
        _cell(title: '職種', content: proposition.occupation),
        _cell(title: 'チーム規模', content: proposition.teamSize),
        Container(
          margin: const EdgeInsets.only(bottom: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '利用技術',
                style: AppTextStyle.lato(size: 14, isBold: true),
              ),
              Wrap(
                direction: Axis.horizontal,
                spacing: 8,
                runSpacing: 8,
                children: _chips(proposition.skills),
              ),
            ],
          ),
        ),
        _cell(title: '概要', content: proposition.description),
      ],
    );
  }

  Widget _cell({required String title, required String content}) {
    return Container(
        margin: const EdgeInsets.only(bottom: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: AppTextStyle.lato(size: 14, isBold: true),
            ),
            Text(
              content,
              style: AppTextStyle.lato(size: 14),
            )
          ],
        ));
  }

  List<Widget> _chips(List<String> skills) {
    if (skills.isEmpty) {
      return <Widget>[];
    }

    return skills.map((String skill) => Chip(label: Text(skill))).toList();
  }
}
