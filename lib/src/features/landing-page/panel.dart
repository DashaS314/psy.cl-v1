import 'package:flutter/material.dart';
import './buttons.dart';
import '../recommendation/recommendation_panel.dart';

class PanelWidget extends StatelessWidget {
  final ScrollController controller;

  const PanelWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView(
        padding: EdgeInsets.zero,
        controller: controller,
        children: <Widget>[
          const SizedBox(height: 36,),
          //buildAboutText(), //Replace with RecommendationPanel() when Recommendation page is open
          RecommendationPanel(),
          const SizedBox(height: 24),
        ],
      );

  Widget buildAboutText() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[Buttons()],
        ),
      );
}
