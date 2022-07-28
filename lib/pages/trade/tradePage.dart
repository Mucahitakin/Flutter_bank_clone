import 'package:akbank_clone/pages/trade/trade_Page/TradePageContent.dart';
import 'package:flutter/material.dart';

class TradePage extends StatelessWidget {
  const TradePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('TRANSFERLER VE ÖDEMELER'),
              Icon(Icons.search)
            ],
          )),
      body: TradePageContent(),
    );
  }
}
