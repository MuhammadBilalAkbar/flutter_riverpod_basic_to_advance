import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/main.dart';

class WithStateless extends StatelessWidget {
  const WithStateless({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: Consumer(
          builder: (context, ref, child) {
            final name = ref.watch(nameProvider);
            return Center(
              child: Column(
                children: [
                  Text(name),
                ],
              ),
            );
          },
        ),
      );
}
