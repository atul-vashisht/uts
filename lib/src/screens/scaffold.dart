// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:adaptive_navigation/adaptive_navigation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UtsScaffold extends StatelessWidget {
  final Widget child;
  final int selectedIndex;

  const UtsScaffold({
    required this.child,
    required this.selectedIndex,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final goRouter = GoRouter.of(context);

    return Scaffold(
      body: AdaptiveNavigationScaffold(
        selectedIndex: selectedIndex,
        body: child,
        onDestinationSelected: (idx) {
          if (idx == 0) goRouter.go('/uts-report/total');
          //if (idx == 1) goRouter.go('/authors');
          //if (idx == 2) goRouter.go('/settings');
          if (idx == 1) goRouter.go('/settings');
        },
        destinations: const [
          AdaptiveScaffoldDestination(
            title: 'UTS',
            icon: Icons.bar_chart,
          ),
          // AdaptiveScaffoldDestination(
          //   title: 'Authors',
          //   icon: Icons.person,
          // ),
          AdaptiveScaffoldDestination(
            title: 'Settings',
            icon: Icons.settings,
          ),
        ],
      ),
    );
  }
}
