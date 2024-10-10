# Tolérance aux Pannes sur AWS

La tolérance aux pannes est la capacité d’un système à continuer de fonctionner en cas de défaillance d'un ou plusieurs de ses composants.

## Stratégies pour améliorer la tolérance aux pannes :
- **Multi-AZ** : Répartir vos ressources sur plusieurs zones de disponibilité pour éviter une panne complète.
- **Redondance** : Avoir des copies multiples de vos données et services dans des zones géographiques différentes.
- **Elastic Load Balancer (ELB)** : Distribuer automatiquement le trafic entre plusieurs instances pour éviter les surcharges d’un serveur unique.

## Exemples AWS :
- **RDS Multi-AZ** : Automatiquement bascule entre zones de disponibilité en cas de défaillance.
- **Route 53** : Basculer le trafic entre différentes régions ou serveurs en cas de panne via une politique de basculement (failover).
