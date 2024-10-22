import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  // Controllers for text fields
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController contact = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController password = TextEditingController();

  // Gender selection
  String selectedGender = '';

  // GlobalKey for form validation
  final _formKey = GlobalKey<FormState>();

  // Country list
  final List<String> countries = [
    'United States',
    'Canada',
    'India',
    'Australia',
    'United Kingdom',
    'Germany',
    'France',
    'Japan',
    'China',
  ];

  // Selected country
  String? selectedCountry;

  // Password visibility toggle
  bool _isObscure = true;

  // Function to print form data on successful validation
  void reg() {
    if (_formKey.currentState?.validate() ?? false) {
      print("First Name: ${fname.text}");
      print("Last Name: ${lname.text}");
      print("Email: ${email.text}");
      print("Contact: ${contact.text}");
      print("Address: ${address.text}");
      print("Gender: $selectedGender");
      print("Country: $selectedCountry");
      print("Password: ${password.text}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: _formKey, // Attach GlobalKey to the Form widget
          child: ListView(
            shrinkWrap: true,
            children: [
              const Text("User Registration Form"),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: fname,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "First Name",
                        prefixIcon: Icon(Icons.account_circle),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter First name';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextFormField(
                      controller: lname,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Last Name",
                        prefixIcon: Icon(Icons.account_circle),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Last name';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: email,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Email",
                  prefixIcon: Icon(Icons.email),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: contact,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Contact",
                  prefixIcon: Icon(Icons.phone),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Contact';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: address,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Address",
                  prefixIcon: Icon(Icons.location_city_outlined),
                ),
                maxLines: null,
                minLines: 3,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Address';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              const Text("Gender"),
              Row(
                children: [
                  Radio(
                    value: "Male",
                    groupValue: selectedGender,
                    onChanged: (e) {
                      setState(() {
                        selectedGender = e!;
                      });
                    },
                  ),
                  const Text("Male"),
                  Radio(
                    value: "Female",
                    groupValue: selectedGender,
                    onChanged: (e) {
                      setState(() {
                        selectedGender = e!;
                      });
                    },
                  ),
                  const Text("Female"),
                ],
              ),
              const SizedBox(height: 10),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Country',
                  border: OutlineInputBorder(),
                ),
                value: selectedCountry,
                hint: const Text('Select a country'),
                onChanged: (newValue) {
                  setState(() {
                    selectedCountry = newValue;
                  });
                },
                items: countries.map((country) {
                  return DropdownMenuItem(
                    value: country,
                    child: Text(country),
                  );
                }).toList(),
                validator: (value) => value == null ? 'Please select a country' : null,
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: password,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: "Password",
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure; // Toggle password visibility
                      });
                    },
                  ),
                ),
                obscureText: _isObscure, // Hide or show password
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: reg,
                child: const Text("Register"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
