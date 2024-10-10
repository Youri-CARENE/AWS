# Optimisation des Performances sur AWS

## Stratégies d'optimisation :
- **Utilisation d'Auto Scaling** : Adapter dynamiquement le nombre d'instances EC2 en fonction de la charge.
- **Utilisation des types d'instances EC2** : Choisir les types d'instances adaptés à votre charge de travail (mémoire optimisée, calcul optimisé, etc.).
- **Placement Groups** : Réduire la latence réseau pour les charges de travail intensives en bande passante.

## Services pour améliorer les performances :
- **CloudFront** : Service de CDN pour distribuer du contenu avec faible latence.
- **Elasticache** : Utiliser Redis ou Memcached pour stocker des données en cache et réduire la latence des bases de données.
