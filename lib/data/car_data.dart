
import '../models/car.dart';

const List<Car> initialCars = [
  Car(
    name: 'AMG GT',
    brand: 'Mercedes-Benz',
    price: 850000,
    horsepower: 469,
    imageUrl:
        'https://images.unsplash.com/photo-1617814065893-00757125efab?q=80&w=1632&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    description: 'A premium sports car combining performance and luxury.',
  ),
  Car(
    name: '911 Carrera',
    brand: 'Porsche',
    price: 750000,
    horsepower: 388,
    imageUrl:
    'https://images.unsplash.com/photo-1680530943583-9b0db80fac69?q=80&w=1632&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    description: 'An iconic rear-engine sports car built for driving enjoyment.',
  ),
  Car(
    name: 'M4 Competition',
    brand: 'BMW',
    price: 700000,
    horsepower: 503,
    imageUrl:
        'https://images.unsplash.com/photo-1741889823656-c056b0c43749?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    description: 'A high-performance coupe with precise handling.',
  ),
  Car(
    name: 'C-Class',
    brand: 'Mercedes-Benz',
    price: 300000,
    horsepower: 201,
    imageUrl:
        'https://images.unsplash.com/photo-1660107930689-fc8a8fb9d007?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    description: 'A refined sedan designed for everyday comfort.',
  ),
  Car(
    name: 'Supra',
    brand: 'Toyota',
    price: 350000,
    horsepower: 382,
    imageUrl:
        'https://images.unsplash.com/photo-1779725201811-8a647087f32b?q=80&w=825&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    description: 'A sporty coupe with responsive turbocharged performance.',
  ),
  Car(
    name: 'Model 3',
    brand: 'Tesla',
    price: 180000,
    horsepower: 283,
    imageUrl:
        'https://images.unsplash.com/photo-1560958089-b8a1929cea89?auto=format&fit=crop&w=900&q=80',
    description: 'An electric sedan with modern technology.',
  ),
  Car(
    name: 'Civic Type R',
    brand: 'Honda',
    price: 400000,
    horsepower: 315,
    imageUrl:
        'https://images.unsplash.com/photo-1605756580041-21312e9fb2bc?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    description: 'A track-inspired hatchback with engaging performance.',
  ),
  Car(
    name: 'Golf GTI',
    brand: 'Volkswagen',
    price: 250000,
    horsepower: 241,
    imageUrl:
        'https://images.unsplash.com/photo-1657198968418-f41aa25adde9?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    description: 'A practical hatchback with a sporty character.',
  ),
  Car(
    name: 'Mustang GT',
    brand: 'Ford',
    price: 500000,
    horsepower: 480,
    imageUrl:
        'https://images.unsplash.com/photo-1625231334168-35067f8853ed?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    description: 'An American muscle car with a powerful V8 engine.',
  ),
  Car(
    name: '911 Turbo S',
    brand: 'Porsche',
    price: 1800000,
    horsepower: 640,
    imageUrl:
        'https://images.unsplash.com/photo-1658538363111-523c8bc435ed?q=80&w=647&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    description: 'A fast and sophisticated all-weather sports car.',
  ),
  Car(
    name: 'A45 S',
    brand: 'Mercedes-AMG',
    price: 450000,
    horsepower: 416,
    imageUrl:
        'https://images.unsplash.com/photo-1712814337286-536f2305cea4?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    description: 'A compact performance car with all-wheel drive.',
  ),
  Car(
    name: 'M3 Competition',
    brand: 'BMW',
    price: 650000,
    horsepower: 503,
    imageUrl:
    'https://images.unsplash.com/photo-1724262706189-82b1347b97e2?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    description: 'A performance sedan blending practicality and speed.',
  ),
  Car(
    name: 'GR Yaris',
    brand: 'Toyota',
    price: 300000,
    horsepower: 300,
    imageUrl:
        'https://images.unsplash.com/photo-1611580568660-28050c1d5b5c?q=80&w=765&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    description: 'A rally-inspired compact performance hatchback.',
  ),
  Car(
    name: 'MX-5',
    brand: 'Mazda',
    price: 250000,
    horsepower: 181,
    imageUrl:
        'https://images.unsplash.com/photo-1603739297343-21e40a7e127d?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    description: 'A lightweight roadster focused on driving pleasure.',
  ),
  Car(
    name: 'Huracan',
    brand: 'Lamborghini',
    price: 1500000,
    horsepower: 631,
    imageUrl:
        'https://images.unsplash.com/photo-1511919884226-fd3cad34687c?auto=format&fit=crop&w=900&q=80',
    description: 'An exotic supercar with dramatic styling.',
  ),
  Car(
    name: '488 GTB',
    brand: 'Ferrari',
    price: 1200000,
    horsepower: 661,
    imageUrl:
        'https://images.unsplash.com/photo-1592198084033-aade902d1aae?auto=format&fit=crop&w=900&q=80',
    description: 'An Italian sports car engineered for exhilarating speed.',
  ),
  Car(
    name: 'R8 V10',
    brand: 'Audi',
    price: 1100000,
    horsepower: 562,
    imageUrl:
        'https://images.unsplash.com/photo-1603584173870-7f23fdae1b7a?auto=format&fit=crop&w=900&q=80',
    description: 'A mid-engine sports car with a naturally aspirated V10.',
  ),
  Car(
    name: 'Ioniq 5 N',
    brand: 'Hyundai',
    price: 370000,
    horsepower: 641,
    imageUrl:
        'https://images.unsplash.com/photo-1647418552401-f3958302b72a?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    description: 'An electric performance car with track-focused features.',
  ),
  Car(
    name: 'BRZ',
    brand: 'Subaru',
    price: 250000,
    horsepower: 228,
    imageUrl:
        'https://images.unsplash.com/photo-1630858273073-ceef9c4d9504?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    description: 'A lightweight rear-wheel-drive sports coupe.',
  ),
  Car(
    name: 'Panamera',
    brand: 'Porsche',
    price: 900000,
    horsepower: 348,
    imageUrl:
        'https://images.unsplash.com/photo-1611859266720-147cc87658f1?q=80&w=1632&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
    description: 'A luxury performance sedan for long-distance journeys.',
  ),
];
