import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  var _titleController = TextEditingController();
  var _amountController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();

    super.dispose();
  }

  void _addExpense() {
    print(_titleController.text);
    print(_amountController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: InputDecoration(label: Text('Title')),
          ),
          TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              prefixText: '\$ ',
              label: Text('Amount'),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              TextButton(onPressed: () {}, child: Text("Cancel")),
              ElevatedButton(
                onPressed: _addExpense,
                child: Text('Add Expense'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
