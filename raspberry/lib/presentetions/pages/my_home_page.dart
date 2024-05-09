import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:raspberry/presentetions/constans/style.dart';

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
        backgroundColor: Style.colorOfMain,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
                left: 15,
                right: 15,
              ),
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
                      color: Style.colorOfMain,
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Column(
                        children: [
                          const Row(
                            children: [
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
                                          // style: Style.textFormget,
                                        ),
                                      ],
                                    )),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 180,
                            child: Card(
                              child: Column(
                                children: [
                                  Stack(
                                  children: [
                                  ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                  ),
                                  child: Image.asset("assets/food.png"),
                                 ),

                               const Positioned(
                               top: 10,
                               left: 15,
                               right: 15,
                               child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                               Text(
                               "Еда",
                                ),
                               Text(
                               "из кофе и ресторана",
                                ),
                                ],
                                ),
                                ),
                                ],
                                 ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    "Food",
    "Product",
    "Clothes",
    "furnute",
    "Fast food",
    "Computer",
    "Laptop",
    "Constables",
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(
          Icons.clear,
          size: 26,
        ),
        onPressed: () {
          query = " ";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.arrow_back,
        size: 26,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var coffee in searchTerms) {
      if (coffee.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(coffee);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
