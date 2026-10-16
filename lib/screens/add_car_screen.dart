
import 'package:flutter/material.dart';
import '../models/car.dart';

class AddCarScreen extends StatefulWidget {
  const AddCarScreen({super.key});

  @override
  State<AddCarScreen> createState() => _AddCarScreenState();
}

class _AddCarScreenState extends State<AddCarScreen> {
  final _formKey = GlobalKey<FormState>();

  final _brandController = TextEditingController();
  final _nameController = TextEditingController();
  final _priceController = TextEditingController();
  final _horsepowerController = TextEditingController();
  final _imageUrlController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  void dispose() {
    _brandController.dispose();
    _nameController.dispose();
    _priceController.dispose();
    _horsepowerController.dispose();
    _imageUrlController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  void _submitForm() {
    FocusScope.of(context).unfocus();

    if (!_formKey.currentState!.validate()) {
      return;
    }

    final car = Car(
      brand: _brandController.text.trim().toUpperCase(),
      name: _nameController.text.trim().toUpperCase(),
      price: double.parse(_priceController.text.trim()),
      horsepower: int.parse(_horsepowerController.text.trim()),
      imageUrl: _imageUrlController.text.trim().isEmpty
          ? 'https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?auto=format&fit=crop&w=900&q=80'
          : _imageUrlController.text.trim(),
      description: _descriptionController.text.trim().isEmpty
          ? 'A car added to the CarSpot collection.'
          : _descriptionController.text.trim(),
    );

    Navigator.pop<Car>(context, car);
  }

  String? _requiredValidator(String? value, String fieldName) {
    if (value == null || value.trim().isEmpty) {
      return '$fieldName cannot be empty';
    }
    return null;
  }

  String? _priceValidator(String? value) {
    final requiredError = _requiredValidator(value, 'Price');
    if (requiredError != null) return requiredError;

    final price = double.tryParse(value!.trim());

    if (price == null || price <= 0) {
      return 'Enter a valid price greater than zero';
    }

    return null;
  }

  String? _horsepowerValidator(String? value) {
    final requiredError = _requiredValidator(value, 'Horsepower');
    if (requiredError != null) return requiredError;

    final horsepower = int.tryParse(value!.trim());

    if (horsepower == null || horsepower <= 0) {
      return 'Enter a whole number greater than zero';
    }

    return null;
  }

  InputDecoration _inputDecoration(String label, IconData icon) {
    return InputDecoration(
      labelText: label,
      prefixIcon: Icon(icon, color: const Color(0xFFFF8A5B)),
      labelStyle: const TextStyle(color: Colors.white70),
      filled: true,
      fillColor: const Color(0xFF1C1C1E),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide.none,
      ),
      errorMaxLines: 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101012),
      appBar: AppBar(
        backgroundColor: const Color(0xFF101012),
        foregroundColor: Colors.white,
        title: const Text(
          'ADD A CAR',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
            fontSize: 17,
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const Text(
              'Expand the collection.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Enter the vehicle information below.',
              style: TextStyle(color: Colors.white60),
            ),
            const SizedBox(height: 28),
            TextFormField(
              controller: _brandController,
              style: const TextStyle(color: Colors.white),
              decoration: _inputDecoration(
                'Brand',
                Icons.business,
              ),
              validator: (value) =>
                  _requiredValidator(value, 'Brand'),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _nameController,
              style: const TextStyle(color: Colors.white),
              decoration: _inputDecoration(
                'Model name',
                Icons.directions_car,
              ),
              validator: (value) =>
                  _requiredValidator(value, 'Model name'),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _priceController,
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              style: const TextStyle(color: Colors.white),
              decoration: _inputDecoration(
                'Price in RM',
                Icons.payments_outlined,
              ),
              validator: _priceValidator,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _horsepowerController,
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Colors.white),
              decoration: _inputDecoration(
                'Horsepower (HP)',
                Icons.speed,
              ),
              validator: _horsepowerValidator,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _imageUrlController,
              keyboardType: TextInputType.url,
              style: const TextStyle(color: Colors.white),
              decoration: _inputDecoration(
                'Image URL (optional)',
                Icons.image_outlined,
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _descriptionController,
              minLines: 3,
              maxLines: 4,
              style: const TextStyle(color: Colors.white),
              decoration: _inputDecoration(
                'Description (optional)',
                Icons.notes,
              ),
            ),
            const SizedBox(height: 28),
            SizedBox(
              height: 54,
              child: ElevatedButton.icon(
                onPressed: _submitForm,
                icon: const Icon(Icons.add_circle_outline),
                label: const Text(
                  'ADD TO CARSPOT',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF6B35),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
