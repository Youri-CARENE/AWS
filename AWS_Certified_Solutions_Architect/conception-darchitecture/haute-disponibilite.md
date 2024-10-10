# Conception pour la Haute Disponibilité

La haute disponibilité (HA) garantit que vos applications restent disponibles même en cas de défaillance d'une zone de disponibilité ou d'un composant de l'infrastructure.

## Principes de HA sur AWS :
- **Multi-AZ** : Déployer vos ressources sur plusieurs zones de disponibilité (EC2, RDS, ELB).
- **Auto Scaling** : Ajuster dynamiquement la capacité de vos instances en fonction de la demande.
- **Elastic Load Balancing (ELB)** : Distribuer le trafic réseau sur plusieurs instances dans différentes zones de disponibilité.

## Exemples de services avec support Multi-AZ :
- **RDS (Relational Database Service)** : Peut être configuré en Multi-AZ pour basculer automatiquement en cas de panne.
- **ElastiCache** : Utilise le Multi-AZ pour des services de mise en cache résilients.

Ces stratégies garantissent une disponibilité élevée même en cas de pannes matérielles ou de défaillances réseau.
