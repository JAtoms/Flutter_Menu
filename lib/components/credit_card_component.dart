import 'package:flutter/material.dart';

class CreditCardWidget extends StatelessWidget {
  CreditCardWidget({
    required this.color,
    required this.currentBalance,
    required this.bankName,
    required this.cardNumber,
    required this.holderName,
    required this.expiryDate,
  });

  final Color color;
  final String currentBalance, bankName, cardNumber, holderName, expiryDate;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, bottom: 25),
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          width: 100,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(18),
            // boxShadow: [
            //   BoxShadow(
            //       color: color,
            //       blurRadius: 15,
            //       spreadRadius: 0.0,
            //       offset: Offset(-2.0, 2.0))
            // ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Current Balance',
                          style: TextStyle(color: Colors.white70),
                        ),
                        Align(
                          child: Text(
                            bankName,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      '\$$currentBalance',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ],
                ),
                Text(
                  '**** **** **** $cardNumber',
                  style: TextStyle(
                      color: Colors.white, fontSize: 25, letterSpacing: 2),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Card holder
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Card Holder',
                          style: TextStyle(color: Colors.white70, fontSize: 10),
                        ),
                        SizedBox(height: 3),
                        Text(
                          holderName,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                    // Card Expires
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Expires',
                          style: TextStyle(color: Colors.white70, fontSize: 10),
                        ),
                        SizedBox(height: 3),
                        Text(
                          expiryDate,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      maxRadius: 13,
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}