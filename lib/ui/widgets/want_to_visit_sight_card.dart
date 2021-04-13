import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/domain/sight.dart';

class WantToVisitSightCard extends StatelessWidget {
  final Sight sight;

  WantToVisitSightCard(this.sight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        height: 198,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
                      child: Image.network(
                        sight.url,
                        fit: BoxFit.cover,
                        loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                          if (loadingProgress == null) {
                            return child;
                          }
                          return Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                                  : null,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    left: 16,
                    child: Text(
                      sight.type,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Positioned(
                    top: 16,
                    right: 57,
                    child: SvgPicture.asset(
                      'res/icons/calendar.svg',
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    top: 16,
                    right: 22,
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
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
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      //Контейнер для отсупа между блоками текста
                      Container(
                        height: 5,
                      ),
                      Text(
                        'Запланированно на на 12 окт. 2020',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      Container(
                        height: 9,
                      ),
                      Text(
                        'посещение круглосуточно',
                        style: Theme.of(context).textTheme.headline3,
                      )
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
