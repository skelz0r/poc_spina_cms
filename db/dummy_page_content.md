## Titre

Tableau:

{:.fr-table}
| Champs du header | Signification | Format |
|------------------------------|------------------|------------|
| `RateLimit-Limit` | La **limite** concernant l'endpoint appelé, soit le nombre de requête/minute. | Nombre |
| `RateLimit-Remaining` | Le **nombre d'appels restants** durant la période courante d'une minute. | Nombre |
| `RateLimit-Reset` | La **fin de la période** courante. | Timestamp |
| _Uniquement pour le header associé au code erreur 429_ <br> `Retry-after` | **Décompte du nombre de secondes restantes** avant la prochaine période | Secondes |
