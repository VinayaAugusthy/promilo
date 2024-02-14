import 'package:flutter/material.dart';
import 'package:promilo/views/widgets/colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height / 14,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.search,
                ),const SizedBox(width: 10,),
                Text(
                  'Search',
                  style: TextStyle(color: greyColor),
                )
              ],
            ),
            const Icon(Icons.mic_none)
          ],
        ),
      ),
    );
  }
}
