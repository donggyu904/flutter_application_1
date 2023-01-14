import 'package:flutter/material.dart';
import 'page3.dart';

class Page2 extends StatelessWidget {
  const Page2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page 2'),
        leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: (() {
              print('close button clicked');
              Navigator.pop(context);
            })),
      ),
      body: Column(
        children: [
          Text(
            'page 2 hello',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          // ElevatedButton(onPressed: (() => {}), child: const Text('page 2로 이동'))
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Page3(),
                ),
              );
            },
            child: const Text('to page 3'),
          )
        ],
      ),
    );
  }
}
