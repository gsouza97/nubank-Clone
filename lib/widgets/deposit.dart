import 'package:flat_icons_flutter/flat_icons_flutter.dart';
import 'package:flutter/material.dart';

class Deposit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).accentColor,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 35, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageIcon(
              AssetImage('assets/icons/down-arrow.png'),
              color: Colors.white,
              size: 16,
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Depositar',
              style: Theme.of(context).textTheme.subhead,
            ),
          ],
        ),
      ),
    );
  }
}
