// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:gallery/l10n/gallery_localizations.dart';

// BEGIN tooltipDemo

class TooltipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Tooltips'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Long press or hover to display the tooltip',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Tooltip(
                message:
                    'Search',
                child: IconButton(
                  color: Theme.of(context).colorScheme.primary,
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// END
void main() {
	runApp(
		MaterialApp(
			debugShowCheckedModeBanner: false,
			home: TooltipDemo(),
		),
	);
}
