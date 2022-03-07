import 'package:codehouse_academy_tugas_minggu_2/models/city.dart';
import 'package:codehouse_academy_tugas_minggu_2/pages/theme.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final City city;

  const CityCard({Key key, this.city}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: const Color(0xffF6F7F8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  city.imageUrl,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                city.isPopular
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(
                              color: purpleColor,
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(36))),
                          child: Center(
                              child: Image.asset(
                            'assets/icons/star.png',
                            width: 22,
                            height: 22,
                          )),
                        ),
                      )
                    : Container()
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Text(
              city.name,
              style: blackTextStyle.copyWith(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
