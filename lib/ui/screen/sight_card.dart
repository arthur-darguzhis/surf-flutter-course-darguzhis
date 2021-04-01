import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/text_style.dart';

class SightCard extends StatelessWidget {
  final Sight sight;

  SightCard(this.sight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Container(
        height: 188,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: colorPlaceForPhotos,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    left: 16,
                    child: Text(
                      sight.type,
                      style: textBold14White,
                    ),
                  ),
                  Positioned(
                    top: 19,
                    right: 18,
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(color: white, borderRadius: BorderRadius.circular(12.5)),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: backgroundColorForCard,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        sight.name,
                        textAlign: TextAlign.start,
                        style: textMedium16White,
                      ),
                      //Контейнер для отсупа между блоками текста
                      Container(
                        height: 5,
                      ),
                      Text(
                        sight.details,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: textRegular14Secondary,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
