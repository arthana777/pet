import 'package:abc/storycard.dart';
import 'package:flutter/cupertino.dart';

import 'asset.dart';

class Storysec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: 'Add to Story',
            story: dqfam,
            avatar: dq,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: 'Add to Story',
            story: monster,
            avatar: lalu,
          ),
          StoryCard(
            labelText: 'Add to Story',
            story: ps1aishwarya,
            avatar: aish,
          ),
          StoryCard(
            labelText: 'Add to Story',
            story: aliaweds,
            avatar: alia,
          ),
          StoryCard(
            labelText: 'Add to Story',
            story: award,
            avatar: surya,
          ),
          StoryCard(
            labelText: 'Add to Story',
            story: sunny,
            avatar: jayasurya,
          ),
        ],
      ),
    );
  }
}
