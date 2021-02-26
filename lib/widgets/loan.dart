import 'package:flat_icons_flutter/flat_icons_flutter.dart';
import 'package:flutter/material.dart';

class Loan extends StatelessWidget {
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
                  AssetImage('assets/icons/personal.png'),
                  color: Colors.black54,
                  size: 20,
                ),
                SizedBox(width: 14),
                Text(
                  'Empréstimo',
                  style: Theme.of(context).textTheme.title,
                )
              ],
            ),
            SizedBox(height: 30),
            RichText(
              text: TextSpan(
                text: 'Valor disponível de até\n',
                style: TextStyle(
                  color: Color(0xff272727),
                  fontSize: 16,
                ),
                children: [
                  TextSpan(
                    text: 'R\$ 10.400,00',
                    style: TextStyle(
                        color: Color(0xff272727),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(height: 16),
            OutlineButton(
              onPressed: () {},
              highlightedBorderColor: Theme.of(context).canvasColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              borderSide: BorderSide(color: Theme.of(context).canvasColor),
              child: Text(
                'SIMULAR EMPRÉSTIMO',
                style: TextStyle(
                  color: Theme.of(context).canvasColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
