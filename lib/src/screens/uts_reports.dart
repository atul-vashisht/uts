// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

class UtsScreen extends StatefulWidget {
  final Widget child;
  final ValueChanged<int> onTap;
  final int selectedIndex;

  const UtsScreen({
    required this.child,
    required this.onTap,
    required this.selectedIndex,
    super.key,
  });

  @override
  State<UtsScreen> createState() => _UtsScreenState();
}

class _UtsScreenState extends State<UtsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this)
      ..addListener(_handleTabIndexChanged);
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabIndexChanged);
    super.dispose();
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Search'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a demo search alert dialog.'),
                Text('provide here the search options'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Search'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    _tabController.index = widget.selectedIndex;
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Books')
      // ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TabBar(
                  controller: _tabController,
                  tabs: const [
                    Tab(
                      text: 'Total',
                      icon: Icon(Icons.summarize_outlined),
                    ),
                    Tab(
                      text: 'Operator wise',
                      icon: Icon(Icons.people),
                    ),
                    Tab(
                      text: 'Payment mode wise',
                      icon: Icon(Icons.payments_outlined),
                    ),
                    Tab(
                      text: 'Terminal wise',
                      icon: Icon(Icons.roundabout_right),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50),
                child: InkWell(onTap: (){

                  _showMyDialog();
                },
                child: const Icon( Icons.search,),),
              )
            ],
          ),
          Expanded(child: widget.child),
        ],
      ),
    );
  }

  void _handleTabIndexChanged() {
    widget.onTap(_tabController.index);
  }
}

