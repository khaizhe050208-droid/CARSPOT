
import 'package:flutter/material.dart';
import '../models/car.dart';

class CarDetailScreen extends StatelessWidget {
  final Car car;

  const CarDetailScreen({
    super.key,
    required this.car,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101012),
      appBar: AppBar(
        backgroundColor: const Color(0xFF101012),
        foregroundColor: Colors.white,
        title: const Text(
          'CAR DETAILS',
          style: TextStyle(
            fontSize: 16,
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                car.imageUrl,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 250,
                    width: double.infinity,
                    color: const Color(0xFF29292D),
                    alignment: Alignment.center,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.directions_car,
                          color: Colors.white54,
                          size: 64,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Image unavailable',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 24),
            Text(
              car.brand.toUpperCase(),
              style: const TextStyle(
                color: Color(0xFFFF8A5B),
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              car.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'RM ${car.price.toStringAsFixed(0)}',
              style: const TextStyle(
                color: Color(0xFFFF6B35),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: _SpecificationBox(
                    icon: Icons.speed,
                    label: 'POWER',
                    value: '${car.horsepower} HP',
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _SpecificationBox(
                    icon: Icons.directions_car_outlined,
                    label: 'BRAND',
                    value: car.brand,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 28),
            const Text(
              'ABOUT THIS CAR',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              car.description,
              style: const TextStyle(
                color: Colors.white70,
                height: 1.7,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 28),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back),
                label: const Text('BACK TO CARS'),
                style: OutlinedButton.styleFrom(
                  foregroundColor: const Color(0xFFFF8A5B),
                  side: const BorderSide(
                    color: Color(0xFFFF6B35),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SpecificationBox extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _SpecificationBox({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1C1C1E),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: const Color(0xFFFF6B35),
            size: 25,
          ),
          const SizedBox(height: 12),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white54,
              fontSize: 10,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            value,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
