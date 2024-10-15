import 'package:flutter/material.dart';
import 'package:loginp/ecran/signup.dart';
import 'package:loginp/ecran/welcome.dart';

class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF018868),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Bouton de retour
            Padding(
              padding: const EdgeInsets.only(top: 70, left: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xF0F3F2F0),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_sharp),
                  color: const Color(0xFF018868),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Welcome()));
                  },
                ),
              ),
            ),
            // Formulaire de connexion
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.85,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Expanded(
                    child: Column(
                      children: [
                        const Text(
                          "Hello Again!",
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'PTSans',
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Sign in to your account",
                          style: TextStyle(
                            fontSize: 23,
                            color: Colors.grey[700],
                          ),
                        ),
                        const SizedBox(height: 30),
                        // Label email
                        Padding(
                          padding: const EdgeInsets.only(right: 330),
                          child: Text(
                            "Email",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                              fontFamily: 'PTSans',
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        // Champ email
                        const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 10),
                        //  mot de passe
                        Padding(
                          padding: const EdgeInsets.only(right: 300),
                          child: Text(
                            "Password",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                              fontFamily: 'PTSans',
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.visibility),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 5),
                        // mot de passe oublié
                        Padding(
                          padding: const EdgeInsets.only(right: 190),
                          child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Forgot your password?",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontFamily: 'PTSans',
                                ),
                              )),
                        ),
                        const SizedBox(height: 20),
                        // Bouton Sign In
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              // Logique de connexion
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF018868),
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              shape: const RoundedRectangleBorder(),
                            ),
                            child: const Text(
                              "Sign In",
                              style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                  fontFamily: 'PTSans'),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        // Divider ou séparateur
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Première série de petits traits à gauche
                            for (int i = 0;
                                i < 10;
                                i++) // Crée 10 petits traits
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 2),
                                child: Container(
                                  width: 10, // Largeur du petit trait
                                  height: 2, // Hauteur du petit trait
                                  color: const Color(
                                      0x8DB2AFAF), // Couleur du trait
                                ),
                              ),

                            // Texte "Or with"
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "Or with",
                                style: TextStyle(
                                    fontFamily: 'PTSans',
                                    color: Colors.grey[600]),
                              ),
                            ),

                            // Deuxième série de petits traits à droite
                            for (int i = 0;
                                i < 10;
                                i++) // Crée 10 petits traits
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 2),
                                child: Container(
                                  width: 10, // Largeur du petit trait
                                  height: 2, // Hauteur du petit trait
                                  color: const Color(
                                      0x8DB2AFAF), // Couleur du trait
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        // Bouton Sign in avec Google
                        SizedBox(
                          width: double.infinity,
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {}, //
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15),
                                      decoration: BoxDecoration(
                                        color:
                                            Colors.white, // Couleur du bouton
                                        borderRadius: BorderRadius.circular(
                                            5), // Bordures arrondies
                                        border:
                                            Border.all(color: Colors.black54),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.3),
                                            spreadRadius: 2,
                                            blurRadius: 5,
                                            offset: const Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Container(
                                              height: 30,
                                              width: 30,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/google_g_icon.png'),
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Text(
                                            'Sign in with Google',
                                            style: TextStyle(
                                              fontSize: 19,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        // Bouton Sign in avec Twitter
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            decoration: BoxDecoration(
                              color: Colors.white, // Couleur du bouton
                              borderRadius: BorderRadius.circular(
                                  5), // Bordures arrondies
                              border: Border.all(
                                  color: const Color(
                                      0xFF918F8F)), // Bordure autour du bouton
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3), // effet d'ombre
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 10), // Espace entre logo et texte
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/twitter-icon-73.png'),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                const Text(
                                  'Sign in with twitter',
                                  style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Center(
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Signup()));
                            },
                            child: const Text(
                              "Not a member yet? Sign up",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
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
