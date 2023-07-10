// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class helperUi extends StatelessWidget {
  helperUi({super.key,required this.child1,required this.child2});

  Widget child1 , child2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            child1,
            child2,
          ],
        ),
        const SizedBox(height: 10,),
      ],
    );
  }
}
