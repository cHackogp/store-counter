import 'package:flutter/material.dart';
import 'package:store_counter/ui/create store/create_store.dart';
import 'package:store_counter/ui/join store/join_store.dart';
import 'package:store_counter/ui/offline counter/offline_counter.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Options > Create Store, Join Store, Offline Counter
            ElevatedButton(
              child: Text('Create Store'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        CreateStorePage(title: 'Create Store'),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Join Store'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => JoinStorePage(title: 'Join Store'),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Offline Counter'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OfflineCounterPage(
                        title:
                            'Offline Counter'), // ui/offline counter/offline_counter.dart/class OfflineCounterPage
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
