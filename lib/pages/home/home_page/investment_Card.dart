import 'package:akbank_clone/pages/home/home_page/PageContent.dart';
import 'package:flutter/material.dart';

class InvestmentCard extends StatelessWidget {
  const InvestmentCard({Key? key}) : super(key: key);
  final String _title = 'Yatırımlarım';
  final String _content = 'Yatırım işlemi yap ve Yatırımlarını takip et';
  final String _goruntule = 'Yatırımlarımı görüntüle';
  @override
  Widget build(BuildContext context) {
    return GlobalCards(
      child: Row(
        children: [
          Container(
              height: 100,
              color: Colors.white,
              width: 150,
              child: Column(
                children: [
                  GlobalPaddingWidget(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              '$_title',
                              style: StyleText.CardTitleStyle,
                            ),
                          ],
                        ),
                        Padding(
                          padding: PaddingStyle.yatirimPadding,
                          child: Text(
                            '$_content',
                            style: StyleText.CreditCardContent,
                          ),
                        ),
                        Padding(
                          padding: PaddingStyle.yatirimPadding,
                          child: Text(
                            '$_goruntule',
                            style: StyleText.CreditCardYatirim,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          Container(
            height: 100,
            color: Colors.white,
            width: 200,
            child: Padding(
              padding: PaddingStyle.yatirimMorePadding,
              child: Column(
                children: [
                  IconButton(onPressed: () {}, icon: IconButtons().moreicon)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
