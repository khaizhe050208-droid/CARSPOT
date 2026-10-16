
import 'package:flutter/material.dart';

import '../data/car_data.dart';
import '../models/car.dart';
import '../widgets/car_card.dart';
import 'add_car_screen.dart';
import 'car_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Car> cars = List<Car>.of(initialCars);

  Future<void> _openAddCarScreen() async {
    final Car? newCar = await Navigator.push<Car>(
      context,
      MaterialPageRoute(
        builder: (context) => const AddCarScreen(),
      ),
    );

    if (!mounted) return;

    if (newCar != null) {
      setState(() {
        cars.insert(0, newCar);
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('${newCar.name} added successfully!'),
          backgroundColor: const Color(0xFF2E7D32),
        ),
      );
    }
  }

  void _openCarDetails(Car car) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CarDetailScreen(car: car),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101012),
      appBar: AppBar(
        backgroundColor: const Color(0xFF101012),
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'CARSPOT',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                letterSpacing: 2.5,
                fontSize: 22,
              ),
            ),
            Text(
              'DISCOVER YOUR NEXT DRIVE',
              style: TextStyle(
                color: Colors.white60,
                fontSize: 9,
                letterSpacing: 1.5,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            tooltip: 'Add a car',
            onPressed: _openAddCarScreen,
            icon: const Icon(
              Icons.add_circle_outline,
              color: Color(0xFFFF6B35),
              size: 30,
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF39231B),
                    Color(0xFF211B19),
                  ],
                ),
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: const Color(0xFFFF6B35).withValues(alpha: 0.35),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'FIND YOUR NEXT RIDE',
                    style: TextStyle(
                      color: Color(0xFFFF8A5B),
                      fontSize: 11,
                      letterSpacing: 1.8,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Made for the\nlove of driving.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                      height: 1.15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Text(
                    '${cars.length} cars to explore',
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 12),
            child: Row(
              children: [
                Text(
                  'FEATURED CARS',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    letterSpacing: 1.2,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.directions_car_outlined,
                  color: Color(0xFFFF6B35),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: cars.length,
              itemBuilder: (context, index) {
                final Car car = cars[index];

                return CarCard(
                  key: ValueKey(
                    '${car.brand}-${car.name}-$index',
                  ),
                  car: car,
                  onTap: () => _openCarDetails(car),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _openAddCarScreen,
        backgroundColor: const Color(0xFFFF6B35),
        foregroundColor: Colors.white,
        icon: const Icon(Icons.add),
        label: const Text(
          'Add Car',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
