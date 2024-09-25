import 'package:flutter/material.dart';
import 'package:parcial/presentation/screens/character/characterScreen.dart';
import 'package:parcial/presentation/screens/planet/planetScreen.dart';
import 'package:parcial/presentation/screens/transformation/transformationScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  
  static final List<Map<String,dynamic>> _menu = [
    {"title": "Characters","widget":CharacterScreen()},
    {"title": "Panet","widget":PlanetScreen()},
    {"title": "Trasnformation","widget":TransformationScreen()}
  ];

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

int _indicator = 0;

void changeIndicator(int index){
  _indicator = index;
  setState(() {});
  Navigator.pop(context);
}
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Dragon Ball"),
      ),
      body: HomeScreen._menu[_indicator]["widget"],
      drawer: Drawer(
        child: ListView.builder(
          itemCount: HomeScreen._menu.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(HomeScreen._menu[index]['title']),
              onTap: (){
                changeIndicator(index);
              },
            );
          },
        )
      ),
    );
  }
}