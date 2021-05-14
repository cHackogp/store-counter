import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:store_counter/app/store_counter_app.dart';

void main() async {
  // An async function runs synchronously until the first await keyword.
  // This means that within an async function body,
  // all synchronous code before the first await keyword executes immediately.
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //  Platform specific Embedder(1) -> C/C++ Engine(2) -> Dart Framework(3).
  // the WidgetFlutterBinding is used to interact with the Flutter engine(2) -> (3).
  // Firebase.initializeApp() needs to call native code to initialize Firebase (3) -> (1),
  // and since the plugin needs to use platform channels to call the native code(2) -> (1),
  // which is done asynchronously therefore you have to call ensureInitialized()
  // to make sure that you have an instance of the WidgetsBinding.
  runApp(StoreCounterApp()); // app/store_counter_app.dart/class StoreCounterApp
}
