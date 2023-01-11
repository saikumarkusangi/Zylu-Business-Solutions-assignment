
import 'package:flutter/material.dart';

import '../models/characterModel.dart';
import '../services/network_manager.dart';

class CharacterController extends ChangeNotifier{
  
  bool isLoading = false;
  List<CharacterModel> Characters  =[];

  CharacterController(){
    fetchCharacters();
  }

Future<void> fetchCharacters() async {
  isLoading = true;
  notifyListeners();
  Characters = await NetworkManager.fetchCharacter();
  isLoading = false;
  notifyListeners();
}

}