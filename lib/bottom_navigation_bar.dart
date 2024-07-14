import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 2.0, color: Colors.black), // Bordure supérieure de 2px
        ),
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        elevation: 0, // Supprime l'ombre
        selectedItemColor: Colors.blue, // Couleur de l'élément sélectionné
        unselectedItemColor: Colors.grey, // Couleur des éléments non sélectionnés
        showSelectedLabels: true, // Afficher les labels des éléments sélectionnés
        showUnselectedLabels: true, // Afficher les labels des éléments non sélectionnés
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold), // Style du texte des éléments sélectionnés
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal), // Style du texte des éléments non sélectionnés
        items: const [
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.trophy),
          label: 'Accueil',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.chartPie),
          label: 'Rechercher',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.compactDisc),
          label: 'Profil',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.user),
          label: 'Profil',
        ),
      ],
        selectedFontSize: 12.0, // Taille de police des éléments sélectionnés
        unselectedFontSize: 10.0, // Taille de police des éléments non sélectionnés
        type: BottomNavigationBarType.fixed, // Pour afficher tous les éléments sans scroller
        backgroundColor: Colors.white, // Couleur de fond de la barre de navigation
      ),
    );
  }
}
