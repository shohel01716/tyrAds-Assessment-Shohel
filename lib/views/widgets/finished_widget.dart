import 'package:flutter/material.dart';

class FinishedWidget extends StatelessWidget {
  final VoidCallback onResetClicked;
  const FinishedWidget({
    super.key,
    required this.onResetClicked,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Ad Posted !',
            style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: onResetClicked,
            child: const Text('Reset'),
          ),
        ],
      ),
    );
  }
}