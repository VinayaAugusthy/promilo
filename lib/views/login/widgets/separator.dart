import 'package:flutter/material.dart';

class Separator extends StatelessWidget {
  const Separator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        divider(),
        const Text('Or'),
        divider(),
      ],
    );
  }

  Expanded divider() {
    return const Expanded(
      child: Divider(
        color: Color.fromARGB(78, 158, 158, 158),
      ),
    );
  }
}
