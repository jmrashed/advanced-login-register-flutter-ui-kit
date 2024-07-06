# All kind of input in flutter 

**Text Input**:
   - Single-line text input.
   - Multi-line text input.
   - Password input.
   - Number input.

2. **Selection Input**:
   - Dropdown.
   - Radio buttons.
   - Checkboxes.
   - Switches.

3. **Date and Time Input**:
   - Date picker.
   - Time picker.

4. **Slider**:
   - Continuous slider.
   - Discrete slider.

Here's a Flutter app demonstrating these input types:

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Input Examples')),
        body: InputExamples(),
      ),
    );
  }
}

class InputExamples extends StatefulWidget {
  @override
  _InputExamplesState createState() => _InputExamplesState();
}

class _InputExamplesState extends State<InputExamples> {
  String _dropdownValue = 'Option 1';
  String _radioValue = 'Option 1';
  bool _checkboxValue = false;
  bool _switchValue = false;
  double _sliderValue = 20.0;
  TextEditingController _textController = TextEditingController();
  TextEditingController _multilineController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _numberController = TextEditingController();
  DateTime _selectedDate;
  TimeOfDay _selectedTime;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Single-line text input
          TextField(
            controller: _textController,
            decoration: InputDecoration(labelText: 'Single-line Text Input'),
          ),
          SizedBox(height: 16),

          // Multi-line text input
          TextField(
            controller: _multilineController,
            decoration: InputDecoration(labelText: 'Multi-line Text Input'),
            maxLines: 4,
          ),
          SizedBox(height: 16),

          // Password input
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(labelText: 'Password Input'),
            obscureText: true,
          ),
          SizedBox(height: 16),

          // Number input
          TextField(
            controller: _numberController,
            decoration: InputDecoration(labelText: 'Number Input'),
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 16),

          // Dropdown
          DropdownButton<String>(
            value: _dropdownValue,
            onChanged: (String newValue) {
              setState(() {
                _dropdownValue = newValue;
              });
            },
            items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          SizedBox(height: 16),

          // Radio buttons
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <String>['Option 1', 'Option 2', 'Option 3']
                .map((String value) {
              return RadioListTile(
                title: Text(value),
                value: value,
                groupValue: _radioValue,
                onChanged: (String newValue) {
                  setState(() {
                    _radioValue = newValue;
                  });
                },
              );
            }).toList(),
          ),
          SizedBox(height: 16),

          // Checkboxes
          CheckboxListTile(
            title: Text('Checkbox'),
            value: _checkboxValue,
            onChanged: (bool newValue) {
              setState(() {
                _checkboxValue = newValue;
              });
            },
          ),
          SizedBox(height: 16),

          // Switch
          SwitchListTile(
            title: Text('Switch'),
            value: _switchValue,
            onChanged: (bool newValue) {
              setState(() {
                _switchValue = newValue;
              });
            },
          ),
          SizedBox(height: 16),

          // Date picker
          ElevatedButton(
            onPressed: () => _selectDate(context),
            child: Text('Select Date'),
          ),
          if (_selectedDate != null) Text('Selected date: ${_selectedDate.toLocal()}'),
          SizedBox(height: 16),

          // Time picker
          ElevatedButton(
            onPressed: () => _selectTime(context),
            child: Text('Select Time'),
          ),
          if (_selectedTime != null) Text('Selected time: ${_selectedTime.format(context)}'),
          SizedBox(height: 16),

          // Continuous slider
          Slider(
            value: _sliderValue,
            min: 0,
            max: 100,
            onChanged: (double newValue) {
              setState(() {
                _sliderValue = newValue;
              });
            },
            label: '$_sliderValue',
          ),
        ],
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null && picked != _selectedTime)
      setState(() {
        _selectedTime = picked;
      });
  }
}
```

### Explanation:
1. **Text Input**:
   - `TextField` widgets for single-line, multi-line, password, and number inputs.
2. **Selection Input**:
   - `DropdownButton` for dropdown selection.
   - `RadioListTile` for radio button selection.
   - `CheckboxListTile` for checkboxes.
   - `SwitchListTile` for switches.
3. **Date and Time Input**:
   - `showDatePicker` function for date selection.
   - `showTimePicker` function for time selection.
4. **Slider**:
   - `Slider` widget for continuous slider. 