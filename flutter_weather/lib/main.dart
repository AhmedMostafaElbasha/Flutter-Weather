import 'package:flutter/material.dart';

import 'simple_bloc_observer.dart';
import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;

import 'repositories/repositories.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(App());
}
