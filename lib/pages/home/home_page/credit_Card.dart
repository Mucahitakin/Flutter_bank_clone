import 'dart:math';

import 'package:akbank_clone/pages/home/home_page/PageContent.dart';
import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({Key? key}) : super(key: key);
  final String _title = 'KREDI KARTI BASVURUSU';
  final String _content =
      'Başvurunu yap, internet alışverişlerinde 500 TL ye varan indirim kazan! ';
  final String _basvur = 'Hemen Başvur!';
  final String _CreditCardNumbers = '_ _ _ _';

  @override
  Widget build(BuildContext context) {
    return GlobalCards(
      child: Row(
        children: [
          Container(
            color: Colors.white,
            height: 100,
            width: 150,
            child: Column(
              children: [
                Padding(
                  padding: PaddingStyle.CreditCardLeftContentPadding,
                  child: Column(
                    children: [
                      Text(
                        '$_title',
                        style: StyleText.CardTitleStyle,
                      ),
                      Text(
                        '$_content',
                        style: StyleText.CreditCardContent,
                      ),
                      Padding(
                        padding: PaddingStyle.CreditCardLeftContentPadding,
                        child: Text(
                          '$_basvur',
                          style: StyleText.CreditCardNow,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            height: 100,
            width: 150,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 10),
                  child: Container(
                    width: 70,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        '$_CreditCardNumbers',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////

// class CreditCard extends StatelessWidget {
//   const CreditCard({Key? key}) : super(key: key);

//   final String _title = 'KREDI KARTI BASVURUSU';
//   final String _content =
//       'Başvurunu yap, internet alışverişlerinde 500 TL ye varan indirim kazan! ';
//   final String _basvur = 'Hemen Başvur!';
//   @override
//   Widget build(BuildContext context) {
//     return GlobalCards(
//       child: Row(
//         children: [
//           Column(
//             children: [
//               Expanded(
//                 child: CreditCardContentPadding(
//                   child: Row(
//                     children: [
//                       Column(
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.only(left: 10, top: 10),
//                             child: Text(
//                               '$_title',
//                               style: StyleText.CreditCardTitle,
//                             ),
//                           ),
//                           Padding(
//                             padding: PaddingStyle.CreditcardTopPadding,
//                             child: Container(
//                               color: Colors.white,
//                               height: 50,
//                               width: 118,
//                               child: Column(
//                                 children: [
//                                   Text(
//                                     '$_content',
//                                     style: StyleText.CreditCardContent,
//                                     maxLines: 4,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           Text(
//                             '$_basvur',
//                             style: StyleText.CreditCardNow,
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
