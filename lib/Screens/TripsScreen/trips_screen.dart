import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TripItem {
  final int tripId;
  final int reserveId;
  final String user;
  final String driver;
  final double total;
  final String dateStart;
  final String dateEnd;
  final String state;
  //constructor
  const TripItem({
    required this.tripId,
    required this.reserveId,
    required this.user,
    required this.driver,
    required this.total,
    required this.dateStart,
    required this.dateEnd,
    required this.state,
  });
}

const tripItems = <TripItem>[
  TripItem(
    tripId: 735292,
    reserveId: 814837272,
    user: 'Juan',
    driver: 'Nahual',
    total: 83.23,
    dateStart: '2023/06/22, 17:40 UTC',
    dateEnd: '2023/06/22, 18:30 UTC',
    state: 'Active',
  ),
  TripItem(
    tripId: 738164,
    reserveId: 898873272,
    user: 'Pedro',
    driver: 'Carmen',
    total: 827.43,
    dateStart: '2023/06/20, 12:00 UTC',
    dateEnd: '2023/06/20, 13:30 UTC',
    state: 'Active',
  ),
  TripItem(
    tripId: 733332,
    reserveId: 814129372,
    user: 'Carlos',
    driver: 'Bruno',
    total: 3.29,
    dateStart: '2023/06/29, 19:30 UTC',
    dateEnd: '2023/06/29, 20:00 UTC',
    state: 'Active',
  ),
  TripItem(
    tripId: 098292,
    reserveId: 658137272,
    user: 'Analía',
    driver: 'Jorge',
    total: 68.33,
    dateStart: '2023/06/30, 07:40 UTC',
    dateEnd: '2023/06/30, 08:30 UTC',
    state: 'Active',
  ),
  TripItem(
    tripId: 986392,
    reserveId: 9875317272,
    user: 'Andrea',
    driver: 'Roberto',
    total: 34.55,
    dateStart: '2023/06/22, 17:40 UTC',
    dateEnd: '2023/06/22, 18:30 UTC',
    state: 'Active',
  ),
];

class Trips extends ConsumerWidget {
  final String selectedItem;

  const Trips({super.key, required this.selectedItem});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      body: const TripsView(),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.search),
            ),
            const SizedBox(height:10,),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
            ),
        ],
      ),
    );
  }
}

class TripsView extends StatelessWidget {
  const TripsView({super.key});

  @override
  Widget build(BuildContext context) {
    tripItems;
    return ListView.builder(
        itemCount: tripItems.length,
        itemBuilder: (context, index) {
          final item = tripItems[index];
          return _CustomListTile(item: item);
        });
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.item,
  });

  final TripItem item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.directions_car,
      ),
      title: Row(
        children: [
          const Icon(Icons.info),
          Text('${item.reserveId}'),
        ],
      ),
      subtitle: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.account_circle),
              const SizedBox(
                width: 5,
              ),
              Text(item.driver),
            ],
          ),
          Row(
            children: [
              const Icon(Icons.directions),
              const SizedBox(
                width: 5,
              ),
              Column(
                children: [
                  Text('Inicio: ${item.dateStart}'),
                  Text('Fin: ${item.dateEnd}'),
                ],
              )
            ],
          )
        ],
      ),
      onTap: () {},
      trailing: const Icon(
        Icons.more_vert,
      ),
    );
  }
}
