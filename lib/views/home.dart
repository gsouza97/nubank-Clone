import 'package:flutter/material.dart';
import 'package:nubank_clone/widgets/account_info.dart';
import 'package:nubank_clone/widgets/credit_card.dart';
import 'package:nubank_clone/widgets/deposit.dart';
import 'package:nubank_clone/widgets/donation.dart';
import 'package:nubank_clone/widgets/friend.dart';
import 'package:nubank_clone/widgets/loan.dart';
import 'package:flat_icons_flutter/flat_icons_flutter.dart';
import 'package:nubank_clone/widgets/payment.dart';
import 'package:nubank_clone/widgets/transfer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Olá, Gabriel',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundColor: Theme.of(context).accentColor,
                      child: IconButton(
                        icon: Icon(
                          FlatIcons.hide,
                          color: Theme.of(context).primaryColor,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(width: 8),
                    CircleAvatar(
                      backgroundColor: Theme.of(context).accentColor,
                      child: IconButton(
                        icon: Icon(
                          FlatIcons.settings_5,
                          color: Theme.of(context).primaryColor,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: size.height * 0.04),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: size.height * 0.62,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CreditCard(),
                      AccountInfo(),
                      Loan(),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Payment(),
                      Friend(),
                      Transfer(),
                      Deposit(),
                      Donation(),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
