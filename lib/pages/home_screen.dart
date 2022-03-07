import 'package:codehouse_academy_tugas_minggu_2/models/city.dart';
import 'package:codehouse_academy_tugas_minggu_2/pages/theme.dart';
import 'package:codehouse_academy_tugas_minggu_2/widgets/bottom_navbar.dart';
import 'package:codehouse_academy_tugas_minggu_2/widgets/city_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title: const Text("Tugas Pertama"),
        backgroundColor: accentColor1,
      ),
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            // NOTE ==> TITLE/HEADER
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Explore Now",
                style: blackTextStyle.copyWith(fontSize: 24),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Wonderful Indonesia with CodeHouse",
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // NOTE ==> POPULAR CITIES
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Popular Cities",
                style: regularTextStyle.copyWith(fontSize: 16, decoration: TextDecoration.underline),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(
                    width: 24,
                  ),
                  CityCard(
                    city: City(
                        id: 1,
                        name: 'Jakarta',
                        imageUrl: 'assets/images/jis.jpg'),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    city: City(
                        id: 2,
                        name: 'Bali',
                        imageUrl: 'assets/images/bali.jpg',
                        isPopular: true),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    city: City(
                        id: 3,
                        name: 'Lombok',
                        imageUrl: 'assets/images/mandalika.jpg'),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - 2 * edge,
        margin: EdgeInsets.symmetric(horizontal: edge),
        decoration: BoxDecoration(
            color: const Color(0xffF6F7F8), borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            BottomNavBar(
              imageUrl: 'assets/icons/ic_home.png',
              isActive: true,
            ),
            BottomNavBar(
              imageUrl: 'assets/icons/ic_email.png',
              isActive: false,
            ),
            BottomNavBar(
              imageUrl: 'assets/icons/ic_card.png',
              isActive: false,
            ),
            BottomNavBar(
              imageUrl: 'assets/icons/ic_love.png',
              isActive: false,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
