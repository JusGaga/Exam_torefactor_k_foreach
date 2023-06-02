import 'package:flutter/material.dart';

class Fields extends StatefulWidget {
  const Fields({super.key});

  @override
  State<Fields> createState() => _FieldsState();
}

class _FieldsState extends State<Fields> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount:
                5, // Remplacez 5 par le nombre de cartes que vous souhaitez afficher
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.all(8),
                child: ListTile(
                  leading: Image.network(
                      'https://media.istockphoto.com/id/1192146950/fr/photo/vue-a%C3%A9rienne-du-champ-de-caf%C3%A9-vert-au-br%C3%A9sil.jpg?s=612x612&w=0&k=20&c=q4lYPAeQWq5W0JndhGZxjSJq-pB-wbqoRr4xnH8vicY='),
                  title: Text("test $index"),
                  subtitle: Text("test $index"),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 20),
        FloatingActionButton(
          onPressed: () {
            // Action à exécuter lorsque le bouton est pressé
            print('Bouton pressé!');
          },
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}
