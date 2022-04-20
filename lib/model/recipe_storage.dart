import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import '../model/model.dart';

class RecipeProvider extends ChangeNotifier {
    List<ItemModel> items = [];

    void addItems(ItemModel data) {
        items.add(data);
        notifyListeners();
    }

    void removeItems(ItemModel data) {
        items.remove(data);
        notifyListeners();
    }

    List<ItemModel> get itemsList {
        return items;
    }

}