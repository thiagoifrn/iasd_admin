import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Bem vindo ao sistema de gerenciamento local da igreja.",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: defaultPadding * 3),
        Row(
          children: [
            Spacer(),
            Expanded(
              flex: 8,
              child: SvgPicture.asset(
                "assets/icons/chat.svg",
              ),
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}