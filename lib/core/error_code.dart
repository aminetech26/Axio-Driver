enum ErrorCode {
  COMPTE_EXISTANT('Ce compte existe déjà.'),
  COMPTE_INEXISTANT('Ce compte est introuvable.'),
  EMAIL_INVALIDE("L'adresse email est invalide."),
  MOT_DE_PASSE_INVALIDE('Le mot de passe est incorrect.'),
  NON_AUTORISE("Vous n'êtes pas autorisé à accéder à cette ressource."),
  // Erreur générique.
  ERREUR_INATTENDUE('Une erreur inattendue est survenue.'),
  ERREUR_DE_FORMAT('Le format des données est incorrect.'),
  ERREUR_CACHE('Impossible d’accéder au cache.'),
  ERREUR_RESEAU('Impossible de se connecter au serveur.');

  final String description;
  const ErrorCode(this.description);
}
