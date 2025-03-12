import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: InputDecoration(label: Text('Title')),
          ),

          TextField(
            keyboardType: TextInputType.number,
            controller: _amountController,
            maxLength: 50,

            decoration: InputDecoration(
              label: Text('Amount'),
              prefixText: '\$',
            ),
          ),

          Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                }, 
                child: Text('Cancel')
                ),
              ElevatedButton(
                onPressed: () {
                  print(_titleController.text);
                },
                child: Text('Save Expense'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
