import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shodai_mama/models/db_helper.dart';
import 'package:shodai_mama/models/item.dart';
import 'package:shodai_mama/models/item_provider.dart';
import 'package:shodai_mama/models/item_service.dart';

class TestPage extends StatelessWidget {
  final ItemService itemService = ItemService();

  final DBHelper? dbHelper = DBHelper();

  TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<ItemProvider>(context);
    return FutureBuilder(
      future: itemService.fetchQuotes(),
      builder: (BuildContext context, AsyncSnapshot<List<Item>> snapshot) {
        if (snapshot.hasData) {
          return ListView.separated(
            itemCount: snapshot.data!.length,
            itemBuilder: (BuildContext context, int index) {
              var currentProduct = snapshot.data![index];

              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Image.network(currentProduct.image),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 200,
                              child: Text(
                                currentProduct.title,
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(
                              width: 200,
                              child: Text(
                                currentProduct.description,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              currentProduct.category,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      OutlinedButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.green),
                        ),
                        onPressed: () {
                          dbHelper!
                              .insert(
                            Item(
                              category: currentProduct.category,
                              description: currentProduct.description,
                              title: currentProduct.title,
                              image: currentProduct.image,
                              id: index,
                            ),
                          )
                              .then((value) {
                            cart.addCounter();
                          }).onError((error, stackTrace) {
                            (error.toString());
                          });
                        },
                        child: const Text('Add To Cart'),
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => const Divider(),
          );
        }
        if (snapshot.hasError) {
          return const Center(
              child: Icon(
            Icons.error,
            color: Colors.red,
            size: 82.0,
          ));
        }

        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              CircularProgressIndicator(),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        );
      },
    );
  }
}
