import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  int firstNumber = 0;
  int secondNumber = 0;
  int result = 0;

  final _firstController = TextEditingController();
  final _secondController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Số thứ nhất'),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 100),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: _firstController,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 30,
              ),
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff0E9447), width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff0E9447), width: 2.0),
                ),
                // prefixIcon: Icon(Icons.person),
                hintText: 'Full name',
                labelText: 'labelText',
                alignLabelWithHint: true,
                contentPadding:
                    EdgeInsets.only(left: 50, right: 20, top: 100, bottom: 60),
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text('Số thứ hai'),
          const SizedBox(height: 20),
          TextField(
            keyboardType: TextInputType.number,
            controller: _secondController,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(),
          ),
          const SizedBox(height: 50),
          Text('Kết quả: $result'),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide(color: Colors.red),
                    ),
                  ),
                ),
                onPressed: () {
                  // ddặt break point
                  firstNumber = int.parse(_firstController.text);
                  secondNumber = int.parse(_secondController.text);
                  result = firstNumber + secondNumber;

                  setState(() {});
                  // in log
                  // use a single quote for string
                  print('hoandv: result is $result');
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 150),
                  child: const Text(
                    'Cộng',
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
                width: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 150),
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: const Text(
                  'Trừ',
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
