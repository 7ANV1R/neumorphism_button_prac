import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Neumorphism Button',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NeumorphismButton(),
    );
  }
}

class NeumorphismButton extends StatefulWidget {
  const NeumorphismButton({Key? key}) : super(key: key);

  @override
  State<NeumorphismButton> createState() => _NeumorphismButtonState();
}

class _NeumorphismButtonState extends State<NeumorphismButton> {
  bool _isElevated = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click to play',
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //This is very bad you can create custom widget and reuse it
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isElevated = !_isElevated;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      height: 70,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: _isElevated
                              ? [
                                  BoxShadow(
                                    color: Colors.grey[500]!,
                                    offset: const Offset(4, 4),
                                    blurRadius: 15,
                                    spreadRadius: 1,
                                  ),
                                  const BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-4, -4),
                                    blurRadius: 15,
                                    spreadRadius: 1,
                                  )
                                ]
                              : null),
                      child: const Center(
                        child: Icon(
                          Icons.skip_previous_rounded,
                          size: 38,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isElevated = !_isElevated;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: _isElevated
                              ? [
                                  BoxShadow(
                                    color: Colors.grey[500]!,
                                    offset: const Offset(4, 4),
                                    blurRadius: 15,
                                    spreadRadius: 1,
                                  ),
                                  const BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-4, -4),
                                    blurRadius: 15,
                                    spreadRadius: 1,
                                  )
                                ]
                              : null),
                      child: const Center(
                        child: Icon(
                          Icons.play_arrow_rounded,
                          size: 45,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isElevated = !_isElevated;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      height: 70,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: _isElevated
                              ? [
                                  BoxShadow(
                                    color: Colors.grey[500]!,
                                    offset: const Offset(4, 4),
                                    blurRadius: 15,
                                    spreadRadius: 1,
                                  ),
                                  const BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-4, -4),
                                    blurRadius: 15,
                                    spreadRadius: 1,
                                  )
                                ]
                              : null),
                      child: const Center(
                        child: Icon(
                          Icons.skip_next_rounded,
                          size: 38,
                          color: Colors.grey,
                        ),
                      ),
                    ),
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
