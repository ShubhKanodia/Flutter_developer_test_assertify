import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';

import 'data.dart';

class FirstPage extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Number'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FormBuilder(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              FormBuilderTextField(
                name: 'number',
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter a number',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.add),
                ),
                // validator: FormBuilderValidators.compose([
                ///  FormBuilderValidators.required(context),
                //  FormBuilderValidators.numeric(context),
                // ]),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.saveAndValidate()) {
                    final number =
                        int.parse(_formKey.currentState!.value['number']);
                    final dataProvider =
                        Provider.of<DataProvider>(context, listen: false);
                    dataProvider.addToList(number);
                    Navigator.pushNamed(context, '/second');
                  }
                },
                child: Text('Add'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
