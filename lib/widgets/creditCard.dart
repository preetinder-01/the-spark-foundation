import 'package:bank_app/utilities/themeColors.dart';
import 'package:bank_app/utilities/themeStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CreditCard extends StatefulWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  _CreditCardState createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 216,
        width: 380,
        decoration: BoxDecoration(
          color: ThemeColors.black,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('₹ 1,21,200', style: ThemeStyles.cardMoney),
                    SvgPicture.asset('assets/hide-icon.svg'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24.0,
                  bottom: 32.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Preetinder Singh Bajaj', style: ThemeStyles.cardDetails),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 6.0),
                          child: Text('1234', style: ThemeStyles.cardDetails),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Text('5678',style:ThemeStyles.cardDetails),
                        ),
                        // Padding(
                          // padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          // child: SvgPicture.asset('assets/card-dots.svg'),
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6.0),
                          child: Text('9101', style: ThemeStyles.cardDetails),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
