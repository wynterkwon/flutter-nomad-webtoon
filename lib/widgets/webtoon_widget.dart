import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class Webtoon extends StatelessWidget {
  const Webtoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 250,
          clipBehavior: Clip.hardEdge,
          child: Image.network(webtoon.thumb),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    blurRadius: 3,
                    offset: const Offset(10, 10),
                    color: Colors.black.withOpacity(0.5))
              ]),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          webtoon.title,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
        ),
        // Text(webtoon.id)
      ],
    );
  }
}
