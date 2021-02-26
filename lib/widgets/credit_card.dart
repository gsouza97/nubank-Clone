import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      margin: EdgeInsets.only(bottom: 4),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      color: Theme.of(context).cardColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.credit_card_outlined,
                  color: Colors.black54,
                  size: 18,
                ),
                SizedBox(width: 14),
                Text(
                  'Cartão de Crédito',
                  style: Theme.of(context).textTheme.title,
                )
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Fatura atual',
              style: Theme.of(context).textTheme.subtitle,
            ),
            SizedBox(height: 16),
            Text(
              'R\$ 339,87',
              style: Theme.of(context).textTheme.body1,
            ),
            SizedBox(height: 6),
            RichText(
              text: TextSpan(
                text: 'Limite disponível ',
                style: TextStyle(
                  color: Color(0xff272727),
                  fontSize: 14,
                ),
                children: [
                  TextSpan(
                    text: ' R\$ 3.583,15',
                    style: TextStyle(
                        color: Color(0xff1e7f44),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
