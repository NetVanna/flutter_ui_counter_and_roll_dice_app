import 'package:flutter/material.dart';

import 'button_widget.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  var number = 0;

  void decrease() {
    setState(() {
      number--;
    });
  }

  void increase() {
    setState(() {
      number++;
    });
  }

  void reset() {
    setState(() {
      number = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
         color: Colors.white
        ),
        backgroundColor: Colors.indigo,
        title: const Text(
          "Counter App",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(color: Colors.indigo),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    "$number",
                    style: const TextStyle(
                        color: Colors.black26,
                        fontSize: 150,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWidget(
                    title: "Decrease",
                    onPressed: () {
                      decrease();
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ButtonWidget(
                    title: "Reset",
                    onPressed: () {
                      reset();
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ButtonWidget(
                    title: "Increase",
                    onPressed: () {
                      increase();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
