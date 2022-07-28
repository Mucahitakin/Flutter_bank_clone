import 'package:akbank_clone/pages/home/home_page/PageContent.dart';
import 'package:akbank_clone/pages/home/home_page/shortcuts.dart';
import 'package:akbank_clone/pages/trade/trade_Page/TradePageContent.dart';
import 'package:flutter/material.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);
  final String _appbarTitle = 'Keşfet';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: PaddingStyle.DiscoverPageAppbarTitle,
          child: Text('$_appbarTitle'),
        ),
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: DiscoverPageContent(),
    );
  }
}

class DiscoverPageContent extends StatelessWidget {
  const DiscoverPageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: PaddingStyle.LeftAndRightPaddingStyle,
        child: Column(
          children: [
            const CardTitle(Uptext: 'SANA ÖZEL ÖNERİLER'),
            const SanaOzelCardWidget(),
            const CardTitle(Uptext: 'KISAYOLLAR'),
            const ShortCutsButtonAndTitle(
              IconTitle: 'Başvuru ve nakit ihtiyaçları',
              icon: Icon(Icons.abc_outlined),
            ),
            const ShortCutsButtonAndTitle(
              IconTitle: 'Kampanyalar',
              icon: Icon(Icons.abc_outlined),
            ),
            const CardTitle(Uptext: 'Bize Ulaş'),
            Row(
              children: const [
                ButtonUnderTitle(
                  icon: Icon(Icons.abc),
                  IconTitle: 'En Yakın Akbank',
                ),
                ButtonUnderTitle(
                  icon: Icon(Icons.abc),
                  IconTitle: 'Destek Merkezi',
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DiscoverPageCard extends StatelessWidget {
  const DiscoverPageCard({Key? key, required this.child}) : super(key: key);
  final Widget child;
  final int height = 200;
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

class SanaOzelCardWidget extends StatelessWidget {
  const SanaOzelCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DiscoverPageCard(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              ButtonUnderTitle(
                IconTitle: 'Yatırım Fonu al/sat',
                icon: Icon(Icons.send),
              ),
              ButtonUnderTitle(
                IconTitle: 'Yatırımlarım',
                icon: Icon(Icons.send),
              ),
              ButtonUnderTitle(
                IconTitle: 'Hisse senedi pörtfolyom',
                icon: Icon(Icons.send),
              ),
            ],
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_downward_sharp)),
        ],
      ),
    );
  }
}









/*
class TextBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const TextField(
        decoration: InputDecoration(
          hintText: 'Search',
        ),
      ),
    );
  }
}*/
