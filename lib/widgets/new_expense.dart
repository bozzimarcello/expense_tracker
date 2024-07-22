import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {

  // an alternative way to handle the input manually
  final _titleController = TextEditingController();

  @override
  void dispose() {
    // needed to avoid memory leaks with controllers
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration( // needed to add a lebel
              label: Text('Title'),
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  // debug
                  print(_titleController.text);
                },
                child: const Text('Save expense'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
