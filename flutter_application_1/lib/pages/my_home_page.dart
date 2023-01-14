import 'package:flutter/material.dart';

class MYHomePage extends StatefulWidget {
  MYHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MYHomePage> createState() => _MYHomePageState();
}

class _MYHomePageState extends State<MYHomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AppBar my homepage')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // print(count);
            count++;
          });
        },
        child: Icon(
          Icons.plus_one,
          color: Colors.yellow,
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                print('plus');
              },
              onLongPress: () {
                setState(() {
                  count++;
                });
                print(count);
                // print('ElevatedButton onLongPress');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                // onPrimary: Colors.white,
              ),
              child: const Text('plus'),
            ),
            // const SizedBox(
            //   child: Text(
            //     '0',
            //     textAlign: TextAlign.center,
            //   ),
            //   width: double.maxFinite,
            // ),
            Center(
              child: Text('$count'),
            )
          ]),
    );
  }
}
