import 'package:flutter/material.dart';

class AccountInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      margin: EdgeInsets.only(top: 12, bottom: 4),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      color: Theme.of(context).cardColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ImageIcon(
                  AssetImage('assets/icons/coin.png'),
                  color: Colors.black54,
                  size: 18,
                ),
                SizedBox(width: 14),
                Text(
                  'Conta',
                  style: Theme.of(context).textTheme.title,
                )
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Saldo disponível',
              style: Theme.of(context).textTheme.subtitle,
            ),
            SizedBox(height: 16),
            Text(
              'R\$ 1303,32',
              style: Theme.of(context).textTheme.body2,
            ),
          ],
        ),
      ),
    );
  }
}
