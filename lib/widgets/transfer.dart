import 'package:flat_icons_flutter/flat_icons_flutter.dart';
import 'package:flutter/material.dart';

class Transfer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).accentColor,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 40, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageIcon(
              AssetImage('assets/icons/up-arrow.png'),
              color: Colors.white,
              size: 16,
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Transferir',
              style: Theme.of(context).textTheme.subhead,
            ),
          ],
        ),
      ),
    );
  }
}
