import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';

class SightDetails extends StatelessWidget {
  Sight sight;

  SightDetails({this.sight});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                Container(color: Colors.blueAccent),
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
                      style: TextStyle(color: Color(0xFF3B3E5B), fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        sight.type,
                        style: TextStyle(color: Color(0xFF3B3E5B), fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                      Container(
                        width: 16,
                      ),
                      Text(
                        'закрыто до 09:00',
                        style: TextStyle(color: Color(0xFF7C7E92), fontSize: 14, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 24, bottom: 24),
                    child: Text(
                      sight.details,
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xFF3B3E5B),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 24),
                    height: 48,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFF4CAF50),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Align(
                      child: Text(
                        'ПОСТРОИТЬ МАРШРУТ',
                        style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),
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
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                width: 25,
                                height: 25,
                                decoration:
                                    BoxDecoration(color: Colors.blueAccent, borderRadius: BorderRadius.circular(12.5)),
                              ),
                              Text(
                                'Запланировать',
                                style: TextStyle(fontSize: 14, color: Color(0xFF7C7E92), fontWeight: FontWeight.w400),
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
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              width: 25,
                              height: 25,
                              decoration:
                                  BoxDecoration(color: Colors.blueAccent, borderRadius: BorderRadius.circular(12.5)),
                            ),
                            Text(
                              'В избранное',
                              style: TextStyle(fontSize: 14, color: Color(0xFF3B3E5B), fontWeight: FontWeight.w400),
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
