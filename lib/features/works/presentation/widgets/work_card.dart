import 'package:flutter/material.dart';
import 'package:km_portfolio/core/theme/app_text_style.dart';
import 'package:km_portfolio/core/utils/url_launcher_service.dart';
import 'package:km_portfolio/features/works/domain/work.dart';

class WorkCard extends StatelessWidget {
  const WorkCard({super.key, required this.work, required this.isWide});

  final Work work;
  final bool isWide;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => URLLauncher.open(work.url),
      child: Card(
        elevation: 4,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Center(
                child: Text('No Image',
                  style: AppTextStyle.chango(
                    size: 18,
                    color: Colors.black,
                    isBold: true,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal,
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    Text(work.title,
                      textAlign: TextAlign.center,
                      style: AppTextStyle.lato(
                        size: isWide ? 16 : 10,
                        color: Colors.white,
                        isBold: true,
                      ),
                    ),
                    Text(work.description,
                      textAlign: TextAlign.center,
                      style: AppTextStyle.lato(
                        size: isWide ? 10 : 4,
                        color: Colors.white,
                        isBold: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
