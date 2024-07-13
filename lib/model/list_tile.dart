import 'package:flutter/material.dart';
import 'package:shopping_list/model/groceries_category.dart';

// class Listing extends StatefulWidget {
//   const Listing({super.key});

//   @override
//   State<Listing> createState() => _ListingState();
// }

// class _ListingState extends State<Listing> {
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Column(
//         children: [
//           ListView.builder(
//             itemBuilder: (context, index) => ListTile(
//               title: Text(groceryList[index].title),
//               enabled: true,
//               //  leading: Icon(icondata[groceryList]),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

class Listing extends StatelessWidget {
  const Listing({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: groceryList.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(
          groceryList[index].title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        enabled: true,
        leading: Icon(
          icondata[groceryList[index].category],
          color: Theme.of(context).colorScheme.onPrimary,
        ),
        trailing: Text(
          'Quantity : ${groceryList[index].quantity}',
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
    );
  }
}
