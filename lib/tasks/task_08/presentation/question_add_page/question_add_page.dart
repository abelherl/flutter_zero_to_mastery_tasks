import 'package:flutter/material.dart';
import 'package:flutter_example/tasks/task_08/objects/question.dart';

class QuestionAddPage extends StatefulWidget {
  final Function(Question) onSubmit;
  const QuestionAddPage({
    Key? key,
    required this.onSubmit,
  }) : super(key: key);

  @override
  State<QuestionAddPage> createState() => _QuestionAddPageState();
}

class _QuestionAddPageState extends State<QuestionAddPage> {
  final _formKey = GlobalKey<FormState>();
  String _question = '';
  QuestionCategory _category = QuestionCategory.general;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: 'Question'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your question';
                }
                return null;
              },
              onChanged: (value) => setState(() => _question = value),
            ),
            DropdownButtonFormField<QuestionCategory>(
              value: _category,
              onChanged: (newValue) => setState(() => _category = newValue!),
              items: <QuestionCategory>[
                QuestionCategory.general,
                QuestionCategory.sport,
                QuestionCategory.music,
              ].map((QuestionCategory value) {
                return DropdownMenuItem<QuestionCategory>(
                  value: value,
                  child: Text(value.name),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _submitForm(),
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      FocusScope.of(context).unfocus();

      widget.onSubmit(Question(category: _category, question: _question));

      _formKey.currentState!.reset();
      _category = QuestionCategory.general;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Successfully added a question!'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }
}
