import 'package:flutter/material.dart';
import 'package:store_counter/app/counter.dart';

class OfflineCounterPage extends StatefulWidget {
  OfflineCounterPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _OfflineCounterPageState createState() => _OfflineCounterPageState();
}

class _OfflineCounterPageState extends State<OfflineCounterPage> {
  OfflineCounter counter =
      new OfflineCounter(0); // app/counter.dart/class OfflineCounter

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
            counterWidget(),
            addAndSubtractWidget(),
            resetWidget(),
          ],
        ),
      ),
    );
  }

  Widget counterWidget() {
    return Text(
      '${counter.getCount()}',
      style: Theme.of(context).textTheme.headline1,
    );
  }

  Widget addAndSubtractWidget() {
    return ButtonBar(
      alignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          iconSize: 50,
          icon: Icon(
            Icons.add,
          ),
          onPressed: () {
            setState(() {
              counter.increaseCount();
            });
          },
        ),
        IconButton(
          iconSize: 50,
          icon: Icon(
            Icons.horizontal_rule_outlined,
          ),
          onPressed: () {
            setState(() {
              counter.decreaseCount();
            });
          },
        ),
      ],
    );
  }

  Widget resetWidget() {
    return ElevatedButton(
      child: Text('Reset Counter'),
      onPressed: () {
        setState(() {
          counter.resetCount();
        });
      },
    );
  }
}
