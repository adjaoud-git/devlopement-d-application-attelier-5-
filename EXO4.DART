class MotdepasseCourtException implements Exception {
  String toString() => "Mot de passe trop court, minimum 6 caractères requis.";
}

void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw MotdepasseCourtException();
  }
}

void main() {
  try {
    verifierMotdepasse("123");
    print("Mot de passe accepté !");
  } catch (e) {
    print(e);
  }
}
