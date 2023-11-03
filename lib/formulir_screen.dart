import 'package:flutter/material.dart';
import 'package:tugas1/home_screen.dart';

class FormulirScreen extends StatefulWidget {
  const FormulirScreen({super.key});

  @override
  State<FormulirScreen> createState() => _FormulirScreenState();
}

class _FormulirScreenState extends State<FormulirScreen> {
  final GlobalKey<FormState>_fromKey = GlobalKey<FormState>();
  final nameEcd = TextEditingController();
  final passEcd = TextEditingController();
  final emailEcd = TextEditingController();

  @override
  void dispose(){
    nameEcd.dispose();
    passEcd.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Formulir"),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Form(
          key: _fromKey,
         autovalidateMode: AutovalidateMode.always,
          child: Column(
            children: [
              TextFormField(
               controller: nameEcd,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)),
                  hintText: "Masukkan nama lengkap",
                  labelText: "Nama : "
                ),
                onChanged: (String? value){
                 setState(() {
                 });
                },
                validator: (String? value){
                 if (value == null || value.isEmpty){
                   return 'Nama tidak boleh kosong';
                 }
                 if (value.contains('@, #, *')){
                  return 'Nama tidak boleh memakai simbol';
                 }

                },
              ),

              TextFormField(
               controller: emailEcd,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                   // BorderRadius.all(Radius.circular(30)
                    ),
                  hintText: "Masukkan email aktif",
                  labelText: "Email : "
                ),
                onChanged: (String? value){
                 setState(() {
                 });
                },
                validator: (String? value){
                 if (value == null || value.isEmpty){
                   return 'Email tidak boleh kosong';
                 }
                },
              ),

              TextFormField(
               controller: passEcd,
               obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                   // BorderRadius.all(Radius.circular(30)
                    ),
                  hintText: "Minimal 8 karakter",
                  labelText: "Password : "
                ),
                onChanged: (String? value){
                 setState(() {
                 });
                },
                validator: (String? value){
                 if (value == null || value.isEmpty){
                   return 'Password tidak boleh kosong';
                 }
                },
              ),

              
              ElevatedButton(onPressed: (){
                if (_fromKey.currentState!.validate()){
                print(nameEcd.text);
                print(emailEcd);
                print(passEcd.text);
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScren()));
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('sukses'),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height / 4,
                  ),
                );
                }
              }, child: const Text("Submit"))
              //Text(nameEcd.text)
            ],
          ),
        ),
      ),
    );
  }
}