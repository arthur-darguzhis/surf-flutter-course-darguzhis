import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/colors.dart';

class SightDetails extends StatelessWidget {
  final Sight sight;

  SightDetails({required this.sight});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                Container(
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
                Positioned(
                  top: 36,
                  left: 16,
                  child: SafeArea(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      height: 32,
                      width: 32,
                      child: SvgPicture.asset(
                        'res/icons/arrow_back.svg',
                        color: Color(0xFF252849),
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 16),
              child: Column(
                children: [
                  Container(
                    height: 29,
                    alignment: Alignment.topLeft,
                    child: Text(
                      sight.name,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        sight.type,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Container(
                        width: 16,
                      ),
                      Text(
                        'закрыто до 09:00',
                        style: Theme.of(context).textTheme.headline3,
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 24, bottom: 24),
                    child: Text(
                      sight.details,
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 24),
                    height: 48,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.btnColor,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Align(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'res/icons/go.svg',
                            color: Colors.white,
                            height: 24,
                            width: 24,
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          Text(
                            'ПОСТРОИТЬ МАРШРУТ',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('res/icons/calendar.svg', color: AppColors.secondary),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Запланировать',
                                style: Theme.of(context).textTheme.headline3,
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 40,
                          child: Row(children: [
                            SvgPicture.asset(
                              'res/icons/heart.svg',
                              color: AppColors.primary,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'В избранное',
                              style: Theme.of(context).textTheme.bodyText2,
                            )
                          ]),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
