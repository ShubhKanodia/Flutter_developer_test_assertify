import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Consumer<DataProvider>(
          builder: (context, dataProvider, _) => ListView.builder(
            itemCount: dataProvider.list.length,
            itemBuilder: (context, index) => ListTile(
              title: Text('${dataProvider.list[index]}'),
            ),
          ),
        ),
      ),
    );
  }
}
