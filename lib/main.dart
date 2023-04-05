import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Общежития КУБГАУ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _like = 0;
  late Color _buttonColor;

  void initState() {
    _buttonColor = Colors.grey;
    super.initState();
  }

  var _buttonCall = Column(
    children: [
      ButtonBar(
        children: [
          TextButton(
            onPressed: () {},
            child: Column(
              children: [
                Icon(
                  Icons.call,
                  color: Colors.green,
                  size: 30,
                ),
                Text(
                  'ПОЗВОНИТЬ',
                  style: TextStyle(fontSize: 14, color: Colors.green),
                ),
              ],
            ),
          ),
        ],
      )
    ],
  );

  var _buttonPath = Column(
    children: [
      ButtonBar(
        children: [
          TextButton(
            onPressed: () {},
            child: Column(
              children: [
                Icon(
                  Icons.navigation,
                  color: Colors.green,
                  size: 30,
                ),
                Text(
                  'МАРШРУТ',
                  style: TextStyle(fontSize: 14, color: Colors.green),
                ),
              ],
            ),
          ),
        ],
      )
    ],
  );

  var _buttonShare = Column(
    children: [
      ButtonBar(
        children: [
          TextButton(
            onPressed: () {},
            child: Column(
              children: [
                Icon(
                  Icons.share,
                  color: Colors.green,
                  size: 30,
                ),
                Text(
                  'ПОДЕЛИТЬСЯ',
                  style: TextStyle(fontSize: 14, color: Colors.green),
                ),
              ],
            ),
          ),
        ],
      )
    ],
  );

  var _descriptionOfTheHostel = Padding(
    padding: EdgeInsets.all(28),
    child: Text(
      'В каждом студенческом общежитии в соответствии с санитарными нормами и правилами организуются комнаты для самостоятельных занятий, комнаты отдыха, психологической разгрузки, досуга, интернет-комнаты, кухни, умывальные комнаты, постирочные, душевые, туалетные и т. д. Также в общежитиях могут быть организованы: спортивные залы, помещения для бытового обслуживания и общественного питания (столовая, буфет с подсобными помещениями). Условия проживания в общежитиях университетского кампуса полностью отвечают санитарным нормам и требованиям. С целью улучшения условий быта студентов активно работает система студенческого самоуправления – студенческие советы организуют всю работу по самообслуживанию. Обучающиеся могут участвовать через студенческий совет общежития в решении вопросов совершенствования жилищно-бытовых условий, в том числе благоустройства территории около общежития, организации воспитательной работы и досуга. В каждом общежитии ведется воспитательная работа. Основное внимание уделяется этическому и эстетическому воспитанию.',
      style: TextStyle(
        fontSize: 18,
        color: Colors.black,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    var _titleAndButton = Container(
      padding: const EdgeInsets.all(28),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Общежитие № ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Text(
                  'Краснодар, ул. Калинина, 13к18',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          ButtonBar(
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    if ((_buttonColor == Colors.grey) |
                        (_buttonColor == Colors.red)) {
                      _like++;
                      _buttonColor = Colors.red;
                    }
                  });
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: _buttonColor,
                      size: 30,
                    ),
                    Text(
                      '$_like',
                      style: TextStyle(fontSize: 19, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );

    var _buttons = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buttonCall,
        _buttonPath,
        _buttonShare,
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Общежития КУБГАУ'),
      ),
      body: ListView(
        children: [
          Image.asset(
              "assets/images/18.png"),
          _titleAndButton,
          _buttons,
          _descriptionOfTheHostel,
        ],
      ),
    );
  }
}
