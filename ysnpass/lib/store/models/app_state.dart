import 'package:flutter/foundation.dart';
import 'package:ysnpass/store/models/database.dart';

@immutable
class AppState {
  final List<Database> databases;
  final Database openedDatabase;

  AppState({this.databases = const [], this.openedDatabase});

}
