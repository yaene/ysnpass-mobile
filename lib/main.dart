import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:ysnpass/app.dart';
import 'package:ysnpass/filesystem/database_filesystem.dart';
import 'package:ysnpass/store/middleware/database_middleware.dart';
import 'package:ysnpass/store/models/app_state.dart';
import 'package:ysnpass/store/reducers/app_state_reducer.dart';

void main() {
  runApp(
    YsnPassApp(
      store: Store<AppState>(
        appReducer,
        initialState: AppState(),
        middleware: createDatabaseMiddleware(DatabaseFileSystem()),
      ),
    ),
  );
}