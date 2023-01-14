import 'package:flutter/material.dart';
import 'page2.dart';

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page 1'),
      ),
      body: Column(
        children: [
          Text(
            'hello',
            style: Theme.of(context).textTheme.headline4,
          ),
          ElevatedButton(
              onPressed: (() => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Page2(),
                        ))
                  }),
              child: const Text('page 2로 이동'))
        ],
      ),
    );
  }
}
