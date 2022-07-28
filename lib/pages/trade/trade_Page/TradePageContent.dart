import 'package:akbank_clone/pages/home/home_page/PageContent.dart';
import 'package:akbank_clone/pages/home/home_page/shortcuts.dart';
import 'package:flutter/material.dart';

class TradePageContent extends StatelessWidget {
  const TradePageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: PaddingStyle.LeftAndRightPaddingStyle,
        child: Column(
          children: [
            const CardTitle(Uptext: 'ÖNERİLEN HIZLI İŞLEMLER'),
            Row(
              children: const [
                ButtonUnderTitle(
                  IconTitle: 'Para gönder',
                  icon: Icon(Icons.send),
                ),
                ButtonUnderTitle(
                  IconTitle: 'Fatura ve Kurum Ödemeleri',
                  icon: Icon(Icons.insert_chart_rounded),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: CardTitle(Uptext: 'TRANSFERLER'),
            ),
            TradeCard(
              child: TradeButtons(),
            ),
            const CardTitle(Uptext: 'ÖDEMELER'),
            TradeCard(
              child: PayButtons(),
            ),
            const CardTitle(Uptext: 'PARA YÜKLEME İŞLEMLERİ'),
            TradeCard(
              child: LuckyButtons(),
            ),
            const CardTitle(Uptext: 'HIZLI İŞLEMLER'),
            Row(
              children: const [
                FastProcesButtonAndTitle(
                  IconTitle: 'Direkt Öde',
                  icon: Icon(Icons.phone_android_sharp),
                ),
                FastProcesButtonAndTitle(
                  IconTitle: 'Qr İle ödeme yap',
                  icon: Icon(Icons.qr_code_scanner_outlined),
                ),
                FastProcesButtonAndTitle(
                  IconTitle: 'Para çek/Yatır',
                  icon: Icon(Icons.atm),
                ),
              ],
            ),
            TradeButton(),
          ],
        ),
      ),
    );
  }
}

class ButtonUnderTitle extends StatelessWidget {
  const ButtonUnderTitle({
    Key? key,
    required this.IconTitle,
    required this.icon,
  }) : super(key: key);
  final String IconTitle;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingStyle.FastProcessPaddingTop,
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: PaddingStyle.ShortcutsButtonsPadding,
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.white,
                  elevation: 5,
                  child: IconTheme(
                      data: const IconThemeData(color: Colors.red),
                      child: icon),
                ),
              ),
              Padding(
                padding: PaddingStyle.FastProcessPaddingLeft,
                child: Container(
                  height: 60,
                  width: 80,
                  child: Text(
                    '$IconTitle',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ButtonRightTitle extends StatelessWidget {
  const ButtonRightTitle({
    Key? key,
    required this.IconTitle,
    required this.icon,
  }) : super(key: key);
  final String IconTitle;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingStyle.ShortcutsButtonsAndContentsTopPadding,
      child: Row(
        children: [
          Padding(
            padding: PaddingStyle.ShortcutsButtonsPadding,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.white,
              elevation: 5,
              child: IconTheme(
                  data: const IconThemeData(color: Colors.red), child: icon),
            ),
          ),
          Padding(
            padding: PaddingStyle.ShortcutsContentsPadding,
            child: Text('$IconTitle'),
          ),
        ],
      ),
    );
  }
}

class TradeCard extends StatelessWidget {
  const TradeCard({Key? key, required this.child}) : super(key: key);
  final Widget child;
  final int height = 250;
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

class TradeButtons extends StatelessWidget {
  const TradeButtons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ButtonRightTitle(
          IconTitle: 'Hesaplarım arasında',
          icon: Icon(Icons.compare_arrows_outlined), //
        ),
        ButtonRightTitle(
          IconTitle: 'Para gönder',
          icon: Icon(Icons.send_to_mobile_rounded), //
        ),
        ButtonRightTitle(
          IconTitle: 'Uluslararası (SWIFT/WU)',
          icon: Icon(Icons.language_rounded), //
        ),
      ],
    );
  }
}

class PayButtons extends StatelessWidget {
  const PayButtons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ButtonRightTitle(
            IconTitle: 'Fatura ve kurum ödemeleri',
            icon: Icon(Icons.insert_chart_outlined_outlined) //
            ),
        ButtonRightTitle(
          IconTitle: 'Kredi kartı ödeme',
          icon: Icon(Icons.credit_card_outlined), //
        ),
        ButtonRightTitle(
          IconTitle: 'Kredi ödeme',
          icon: Icon(Icons.bookmark), //
        ),
      ],
    );
  }
}

class LuckyButtons extends StatelessWidget {
  const LuckyButtons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ButtonRightTitle(
          IconTitle: 'Şans Oyunları',
          icon: Icon(Icons.check_box_outline_blank), //
        ),
        ButtonRightTitle(
          IconTitle: 'GSM TL/Paket yükle',
          icon: Icon(Icons.phone_iphone_sharp), //
        ),
        ButtonRightTitle(
          IconTitle: 'Kripto platform işlemleri',
          icon: Icon(Icons.currency_bitcoin_rounded), //
        ),
      ],
    );
  }
}

class FastProcesButtonAndTitle extends StatelessWidget {
  const FastProcesButtonAndTitle({
    Key? key,
    required this.IconTitle,
    required this.icon,
  }) : super(key: key);
  final String IconTitle;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingStyle.FastProcessPaddingTopAndLeft,
      child: Column(
        children: [
          Padding(
            padding: PaddingStyle.ShortcutsButtonsPadding,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.white,
              elevation: 5,
              child: IconTheme(
                  data: const IconThemeData(color: Colors.red), child: icon),
            ),
          ),
          Padding(
            padding: PaddingStyle.FastProcessPaddingTopAndLeft,
            child: Text('$IconTitle'),
          ),
        ],
      ),
    );
  }
}

class TradeButton extends StatelessWidget {
  const TradeButton({Key? key}) : super(key: key);
  final String _Buttontitle = 'Transfer ve ödemeleri yönet';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 30),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 50,
          width: 370,
          child: Padding(
            padding: const EdgeInsets.only(top: 15, left: 90),
            child: Text('$_Buttontitle'),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(width: 2, color: Colors.red),
          ),
        ),
      ),
    );
  }
}
