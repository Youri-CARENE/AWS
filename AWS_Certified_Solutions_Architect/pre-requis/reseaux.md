# Notions de Réseaux sur AWS

## VPC (Virtual Private Cloud)
Un VPC est un réseau virtuel dans AWS où vous pouvez déployer vos ressources AWS (EC2, RDS, etc.).

### Concepts clés :
- **Subnets** : Un sous-réseau dans un VPC qui peut être public ou privé.
- **Internet Gateway** : Permet aux instances dans un VPC d'accéder à Internet.
- **NAT Gateway** : Permet aux instances privées de se connecter à Internet tout en restant inaccessibles depuis l'extérieur.
- **Route Tables** : Définissent comment le trafic est dirigé dans un VPC.

### Autres services réseau :
- **VPC Peering** : Connecter deux VPC pour permettre la communication entre eux.
- **Direct Connect** : Connexion dédiée entre votre réseau sur site et AWS.
