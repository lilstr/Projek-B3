import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project B3',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    if (_usernameController.text == 'b3' &&
        _passwordController.text == '1234') {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MenuPage()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Username atau Password salah!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: _login, child: const Text('Login')),
          ],
        ),
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DataKelompokPage()));
              },
              child: const Text('Data Kelompok'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => KalkulatorPage()));
              },
              child: const Text('Penjumlahan/Pengurangan'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GanjilGenapPage()));
              },
              child: const Text('Ganjil/Genap'),
            ),
          ],
        ),
      ),
    );
  }
}

class DataKelompokPage extends StatelessWidget {
  final List<Map<String, String>> dataKelompok = [
    {'nama': 'Andaris Bintang Perkasa', 'nim': '1244220027'},
    {'nama': 'Brigitta Chrishyandra', 'nim': '124220010'},
    {'nama': 'Bagas Luqman Nur Hakim', 'nim': '124220004'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Data Kelompok')),
      body: ListView.builder(
        itemCount: dataKelompok.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(dataKelompok[index]['nama']!),
            subtitle: Text(dataKelompok[index]['nim']!),
          );
        },
      ),
    );
  }
}

class KalkulatorPage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _KalkulatorPageState createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  final TextEditingController _number1Controller = TextEditingController();
  final TextEditingController _number2Controller = TextEditingController();
  String _result = '';

  void _calculate(bool isAddition) {
  int number1 = int.parse(_number1Controller.text);
  int number2 = int.parse(_number2Controller.text);
  int result = isAddition ? number1 + number2 : number1 - number2;
  final formatter = NumberFormat('#,###');
  setState(() {
    _result = formatter.format(result);
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Penjumlahan/Pengurangan')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _number1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Angka Pertama'),
            ),
            TextField(
              controller: _number2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Angka Kedua'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _calculate(true),
              child: const Text('Penjumlahan'),
            ),
            ElevatedButton(
              onPressed: () => _calculate(false),
              child: const Text('Pengurangan'),
            ),
            const SizedBox(height: 20),
            Text('Hasil: $_result'),
          ],
        ),
      ),
    );
  }
}

class GanjilGenapPage extends StatefulWidget {
  @override
  _GanjilGenapPageState createState() => _GanjilGenapPageState();
}

class _GanjilGenapPageState extends State<GanjilGenapPage> {
  final TextEditingController _numberController = TextEditingController();
  String _result = '';

  void _checkGanjilGenap() {
    int number = int.parse(_numberController.text);
    setState(() {
      if (number % 2 == 0) {
        _result = '$number adalah Bilangan Genap';
      } else {
        _result = '$number adalah Bilangan Ganjil';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ganjil/Genap')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _numberController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Masukkan Angka'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _checkGanjilGenap,
              child: const Text('Cek Ganjil/Genap'),
            ),
            const SizedBox(height: 20),
            Text('Hasil: $_result'),
          ],
        ),
      ),
    );
  }
}
