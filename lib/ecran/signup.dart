import 'package:flutter/material.dart';
import 'package:loginp/ecran/hello.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF018868),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Row(
                  children: [
                    // Flèche de retour
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xF0F3F2F0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_sharp),
                        color: const Color(0xFF018868),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const Hello()),
                          );
                        },
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const Center(
                child: Text(
                  'Create Your\n Account',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'PTSans',
                    color: Color(0XFFFFFFFF),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              // Champ email
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: 'PTSans',
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              //  mot de passe
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: 'PTSans',
                  ),
                ),
              ),
              const SizedBox(height: 10),
              //  icône de visibilité
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.visibility),
                    onPressed: () {},
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  "Re-enter Password",
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.white,
                    fontFamily: 'PTSans',
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                  hintStyle: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'PTSans',
                    fontSize: 20,
                  ),
                  border: const OutlineInputBorder(),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.visibility_off,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Logique de connexion
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFFFFF),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: const RoundedRectangleBorder(),
                  ),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Color(0xFF018868),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                  child: Text(
                'By clicking Sign up you agree to our',
                style: TextStyle(
                    fontFamily: 'PTSans',
                    fontSize: 18,
                    color: Color(0xA0FFFFFF)),
              )),
              const Center(
                child: Text('Terms of Service',
                    style: TextStyle(
                      fontFamily: 'PTSans',
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
                    )),
              ),
              const SizedBox(height: 60),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Hello()));
                  },
                  child: const Text(
                    'Already have an account? Sign in',
                    style: TextStyle(
                      color: Color(0x89FFFFFF),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
