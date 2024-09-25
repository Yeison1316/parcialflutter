import 'package:flutter/material.dart';
import 'package:parcial/entity/characte_entity.dart' ;
import 'package:parcial/helpers/getCharacters.dart';

class CharacterScreen
 extends StatelessWidget {const CharacterScreen({super.key});
  @override
  Widget build(BuildContext context) {

    final petition = GetCharacter();

    return FutureBuilder(
    future: petition.getPJ(), 
    builder: (context, snapshot) {
      if(snapshot.connectionState == ConnectionState.waiting){
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      return ListCharacter(character: snapshot.requireData);
    },);
  }
}

class ListCharacter extends StatelessWidget {
  const ListCharacter({
    super.key,
    required this.character,
  });

  final List<CharacterEntity> character;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: character.length,
      itemBuilder: (context,index){
        return Text(character[index].nombre.toString());
      });
  }
}