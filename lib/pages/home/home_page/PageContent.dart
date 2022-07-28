import 'package:akbank_clone/pages/home/home_page/credit_Card.dart';
import 'package:akbank_clone/pages/home/home_page/investment_Card.dart';
import 'package:akbank_clone/pages/home/home_page/shortcuts.dart';
import 'package:flutter/material.dart';

class pageContent extends StatelessWidget {
  const pageContent({Key? key}) : super(key: key);
  final String _name = 'Mücahit';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Merhaba $_name',
              style: const TextStyle(color: Color(0xffF68B8B)),
            ),
            const Icon(
              Icons.account_circle_rounded,
              size: 28,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: PaddingStyle.LeftAndRightPaddingStyle,
          child: Column(
            children: const [
              CardTitle(Uptext: 'HESAP VE KARTLAR'),
              AccountCards(),
              CreditCard(),
              CardTitle(Uptext: 'YATIRIM VE DÖVİZ'),
              InvestmentCard(),
              CardTitle(Uptext: 'KISAYOLLAR'),
              ShortCutsButtonAndTitle(
                  IconTitle: 'Başvuru ve nakit ihtiyaçları',
                  icon: Icon(Icons.add)),
              ShortCutsButtonAndTitle(
                IconTitle: 'Kredi İşlemler',
                icon: Icon(Icons.credit_card_rounded),
              ),
              ShortCutsButtonAndTitle(
                IconTitle: 'Tüm Varlıklar',
                icon: Icon(Icons.assessment_outlined),
              ),
              ShortCutsButtonAndTitle(
                IconTitle: 'Kampanya',
                icon: Icon(Icons.sell_sharp),
              ),
              ShortCutsButtonAndTitle(
                IconTitle: 'Senin İçin',
                icon: Icon(Icons.monitor_heart_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AccountCards extends StatelessWidget {
  const AccountCards({Key? key}) : super(key: key);
  final String _Location = 'Çengelköy/İstanbul';
  final String _MusteriNumber = '000-2222222';
  final String bakiyeTitle = 'Kullanılabilir bakiye';
  final double _MevcutBakiye = 1.00;
  final String _Doviz = 'TL';
  final String _Vade = 'Vadesiz';

  @override
  Widget build(BuildContext context) {
    return GlobalCards(
      child: Row(
        children: [
          GlobalPaddingWidget(
            child: Column(
              children: [
                PaddingWidget(
                  child: Text(
                    '$_Location',
                    style: StyleText.locationstyle,
                  ),
                ),
                PaddingWidget(
                  child: Text(
                    '$_MusteriNumber',
                    style: StyleText.musteristyle,
                  ),
                ),
                PaddingWidget(
                  child: Text(
                    '$bakiyeTitle',
                    style: StyleText.bakiyeTitle,
                  ),
                ),
                PaddingWidget(
                  child: Text(
                    '$_MevcutBakiye $_Doviz',
                    style: StyleText.bakiye,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: PaddingStyle.PaddingMorePaddingStyle,
                    child: IconButton(
                      onPressed: () {},
                      icon: IconButtons().moreicon,
                    ),
                  ),
                  Padding(
                    padding: PaddingStyle.VadeTopAndLeft,
                    child: Text(
                      '$_Vade',
                      style: StyleText.PaddingVade,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class GlobalCards extends StatelessWidget {
  const GlobalCards({Key? key, required this.child}) : super(key: key);
  final Widget child;
  final int height = 100;
  final int width = 350;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shadowColor: Colors.grey[600],
      child: SizedBox(
        height: height.toDouble(),
        width: width.toDouble(),
        child: child,
      ),
    );
  }
}

class PaddingStyle {
  static final CreditCardRightCardPadding = EdgeInsets.all(7.0);
  static final VadeTopAndLeft = EdgeInsets.only(left: 170, top: 30);
  static final LeftAndRightPaddingStyle =
      EdgeInsets.only(left: 20.0, right: 20.0, top: 10);
  static final contentTopAndBottomPaddingStyle =
      EdgeInsets.only(top: 3, bottom: 3);
  static final GlobalPaddingLeftPaddingStyle =
      EdgeInsets.only(left: 10, top: 5);
  static final PaddingMorePaddingStyle = EdgeInsets.only(left: 150);
  static final CreditcardGlobalPadding = EdgeInsets.only(right: 170);
  static final CreditcardTopPadding = EdgeInsets.only(top: 5);
  static final CreditCardLeftContentPadding = EdgeInsets.only(
    left: 5,
    top: 10,
  );
  static final yatirimPadding = EdgeInsets.only(top: 12);
  static final PaddingMoreDovizPaddingStyle = EdgeInsets.only(left: 150);
  static final yatirimMorePadding = EdgeInsets.only(left: 126);
  static final ShortcutsContentsPadding = EdgeInsets.only(left: 15);
  static final ShortcutsButtonsPadding = EdgeInsets.only(left: 15);
  static final ShortcutsButtonsAndContentsTopPadding =
      EdgeInsets.only(top: 15, bottom: 10);
  static final FastProcessPaddingTop = EdgeInsets.only(top: 20);
  static final FastProcessPaddingLeft = EdgeInsets.only(left: 15, top: 15);
  static final FastProcessPaddingTopAndLeft =
      EdgeInsets.only(top: 10, left: 15);
  static final DiscoverPageAppbarTitle = EdgeInsets.only(left: 160, right: 160);
}

class StyleText {
  static final locationstyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic);
  static final musteristyle = TextStyle(
      fontSize: 11, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic);
  static final bakiyeTitle = TextStyle(
    color: Color(
      0xff3A3838,
    ),
    fontSize: 12,
    fontFamily: 'Acme',
    fontWeight: FontWeight.bold,
  );
  static final bakiye = TextStyle(
      fontSize: 18, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic);

  static final PaddingVade =
      TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic);
  static final CardTitleStyle = TextStyle(
      color: Color(0xff4A4343),
      fontSize: 12,
      fontFamily: 'Acme',
      fontWeight: FontWeight.bold);
  static final CreditCardContent =
      TextStyle(fontSize: 11, fontWeight: FontWeight.bold);
  static final CreditCardTitle = TextStyle(
      fontFamily: 'Acme',
      fontSize: 13,
      color: Color(0xff756D6D),
      fontWeight: FontWeight.bold);
  static final CreditCardNow = TextStyle(
      fontWeight: FontWeight.bold,
      fontFamily: 'Acme',
      color: Color(0xffFF0000),
      decoration: TextDecoration.underline,
      fontSize: 15);
  static final CreditCardYatirim = TextStyle(
      fontWeight: FontWeight.bold,
      fontFamily: 'Acme',
      color: Color(0xffFF0000),
      decoration: TextDecoration.underline,
      fontSize: 13);
}

class PaddingWidget extends StatelessWidget {
  const PaddingWidget({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingStyle.contentTopAndBottomPaddingStyle,
      child: child,
    );
  }
}

class PaddingMore extends StatelessWidget {
  const PaddingMore({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingStyle.PaddingMoreDovizPaddingStyle,
      child: child,
    );
  }
}

class GlobalPaddingWidget extends StatelessWidget {
  const GlobalPaddingWidget({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingStyle.GlobalPaddingLeftPaddingStyle,
      child: child,
    );
  }
}

class IconButtons {
  final moreicon = const Icon(Icons.more_horiz_outlined, size: 27);
}

class CardTitle extends StatelessWidget {
  const CardTitle({Key? key, required this.Uptext}) : super(key: key);
  final String Uptext;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: CardTitlePadding(
        child: Row(
          children: [
            Text(
              '$Uptext',
              style: StyleText.CardTitleStyle,
            ),
          ],
        ),
      ),
    );
  }
}

class CardTitlePadding extends StatelessWidget {
  const CardTitlePadding({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 5, bottom: 5),
      child: child,
    );
  }
}

class CreditCardContentPadding extends StatelessWidget {
  const CreditCardContentPadding({Key? key, required this.child})
      : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingStyle.CreditcardGlobalPadding,
      child: child,
    );
  }
}
