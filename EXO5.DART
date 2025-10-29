import 'dart:io';

class NombreNegatifException implements Exception {
  String toString() => "Erreur : le nombre ne peut pas être négatif.";
}

void main() {
  try {
    stdout.write("Entrez un nombre : ");
    int nombre = int.parse(stdin.readLineSync()!);
    if (nombre < 0) {
      throw NombreNegatifException();
    }
    print("Le carré de $nombre est ${nombre * nombre}");
  } catch (e) {
    print(e);
  } finally {
    print("Fin de l'opération.");
  }
}
