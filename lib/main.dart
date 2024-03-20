// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uts_repository/uts_repository.dart';
import 'src/app.dart';

void main() {
  runApp(RepositoryProvider(
    create: (context) => UtsRepository(),
    child: UtsApp(),
  ));
}


