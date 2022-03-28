import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _appTitle = 'FeelMe';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _appTitle,
      home: _MyStateffulWidget(),
    );
  }
}

class _MyStateffulWidget extends StatefulWidget {
  const _MyStateffulWidget({Key? key}) : super(key: key);

  @override
  State<_MyStateffulWidget> createState() => __MyStateffulWidgetState();
}

class __MyStateffulWidgetState extends State<_MyStateffulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0',
      style: optionStyle,
    ),
    Text(
      'Index 1',
      style: optionStyle,
    ),
    Text(
      'Index 2',
      style: optionStyle,
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
          backgroundColor: Colors.lightBlue, title: const Text('FellMe')),
      body: Container(
        //child: const Text('Essa'),
        margin: const EdgeInsets.all(55),
        padding: const EdgeInsets.all(25),
        color: Colors.red,
        height: 500,
        width: 600,
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('pressed');
          }),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.indigoAccent,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.graphic_eq),
            label: 'Statistics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        selectedItemColor: Colors.blueAccent,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
