import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final dummySnapshot = [
  {"storeNumber": "783", "customers": 55},
  {"storeNumber": "69", "customers": 96},
];

class JoinStorePage extends StatefulWidget {
  JoinStorePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _JoinStorePageState createState() => _JoinStorePageState();
}

class _JoinStorePageState extends State<JoinStorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('store').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return LinearProgressIndicator();

        return _buildList(context, snapshot.data.docs);
      },
    );
  }

  Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
    return ListView(
      padding: const EdgeInsets.only(top: 20.0),
      children: snapshot.map((data) => _buildListItem(context, data)).toList(),
    );
  }

  Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
    final store = Store.fromSnapshot(data);

    return Padding(
      key: ValueKey(store.storeNumber),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: ListTile(
          title: Text('Store Number:' + store.storeNumber),
          trailing: Text('Customers:' + store.customers.toString()),
          onTap: () => print(store),
        ),
      ),
    );
  }
}

class Store {
  final String storeNumber;
  final int customers;
  final DocumentReference reference;

  Store.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['storeNumber'] != null),
        assert(map['customers'] != null),
        storeNumber = map['storeNumber'],
        customers = map['customers'];

  Store.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data(), reference: snapshot.reference);

  @override
  String toString() => "Store<$storeNumber:$customers>";
}
