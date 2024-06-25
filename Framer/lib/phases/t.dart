import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                  child: subscriptionForm(context, _nameController, _numberController),
                );
              },
            );
          },
          child: Text('Open Subscription Form'),
        ),
      ),
    );
  }
}

Widget subscriptionForm(BuildContext context, TextEditingController nameController, TextEditingController numberController) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        TextField(
          controller: nameController,
          decoration: InputDecoration(labelText: 'Name'),
        ),
        TextField(
          controller: numberController,
          decoration: InputDecoration(labelText: 'Number'),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Perform your form submission logic here
            print('Name: ${nameController.text}, Number: ${numberController.text}');
            Navigator.of(context).pop(); // Close the dialog

            // Show SnackBar
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Subscription submitted!'),
              ),
            );
          },
          child: Text('Submit'),
        ),
      ],
    ),
  );
}