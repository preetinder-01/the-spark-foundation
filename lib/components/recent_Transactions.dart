import 'package:bank_app/utilities/themeStyles.dart';
import 'package:bank_app/widgets/transactionCard.dart';
import 'package:flutter/material.dart';

class RecentTransactions extends StatefulWidget {
  const RecentTransactions({Key? key}) : super(key: key);

  @override
  _RecentTransactionsState createState() => _RecentTransactionsState();
}

class _RecentTransactionsState extends State<RecentTransactions> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
              right: 15.0,
              bottom: 16.0,
              top: 32.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recent Transactions', style: ThemeStyles.primaryTitle),
                Text('See All', style: ThemeStyles.seeAll),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                TransactionCard(
                  color: Colors.black,
                  letter: 'A',
                  title: 'Abcdefgh',
                  subTitle: 'transaction page of abcd',
                  price: '₹ 10,500',
                ),
                TransactionCard(
                  color: Color(0xfffe695d),
                  letter: 'P',
                  title: 'Preetinder singh',
                  subTitle: 'software developer',
                  price: '- ₹ 12,524',
                ),
                TransactionCard(
                  color: Color(0xff103289),
                  letter: 'X',
                  title: 'XYZ',
                  subTitle: 'xyz app developer',
                  price: '₹ 5,24,245',
                ),
                TransactionCard(
                  color: Colors.greenAccent,
                  letter: 'M',
                  title: 'Man',
                  subTitle: 'Man clothings',
                  price: '- ₹ 12,475',
                ),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
