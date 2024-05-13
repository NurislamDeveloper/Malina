import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:raspberry/presentetions/constans/cards_style.dart';
import 'package:raspberry/presentetions/constans/serch_style.dart';
import 'package:raspberry/presentetions/widgets/card.dart';
import 'package:raspberry/presentetions/widgets/cards.dart';
import 'package:raspberry/presentetions/widgets/list_view.dart';
import 'package:raspberry/presentetions/widgets/search.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Search.colorOfMain,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: SizedBox(
                height: 80,
                child: InkWell(
                  onTap: () {
                    showSearch(
                      context: context,
                      delegate: CustomSearchDelegate(),
                    );
                  },
                  child: Container(
                    height: 750,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Search.colorOfMain,
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20, top: 20),
                      child: Column(children: [
                        Row(children: [
                          SizedBox(
                            width: 360,
                            height: 50,
                            child: Card(
                              color: Colors.white,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.search,
                                    size: 28,
                                  ),
                                  Gap(10),
                                  Text(
                                    'search',
                                    style: Search.textFormget,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]),
                      ]),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  CardFirst(),
                  SizedBox(
                    height: 10,
                  ),
                  FirstCard(
                    Color.fromARGB(255, 239, 242, 64),
                    image: 'assets/food.png',
                    firstText: 'Еда',
                    secondText: 'из кафе и ресторана',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FirstCard(
                    Color.fromARGB(255, 248, 144, 196),
                    image: 'assets/flowers.png',
                    firstText: 'Красота',
                    secondText: 'Салон красоты и товары',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding:EdgeInsets.only(right: 180),
              child: Text('Скоро в Малине',style: Cards.constancStyle,),
            ),
           const  Gap(10),
            const Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 15),
                child:Row(
                  children: [
                    ListOfPRoducts(color: Colors.blueAccent, text: 'Clothes',imagess:"assets/clothes.jpeg"),
                    Gap(10,),
                    ListOfPRoducts(color: Colors.tealAccent,text: "Appliances",imagess: 'assets/furnute.jpg', ),
                    Gap(10,), 
                    ListOfPRoducts(color: Colors.purpleAccent,text: 'furniture',imagess: 'assets/texnika.jpg',),
                  ],
                 ),
                ),
              ],
            ),
          ],
        ),
        
      ),
    );
  }
}
