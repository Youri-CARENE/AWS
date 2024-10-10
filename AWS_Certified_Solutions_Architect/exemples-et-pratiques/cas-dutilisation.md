# Cas d'Utilisation AWS

## Cas d’utilisation 1 : Hébergement d'une application web haute disponibilité
1. Utiliser **ELB** pour répartir le trafic entre plusieurs instances **EC2** dans plusieurs zones de disponibilité.
2. Utiliser **Auto Scaling** pour ajuster le nombre d'instances en fonction de la demande.
3. Stocker les assets statiques dans **S3** et utiliser **CloudFront** comme CDN pour distribuer le contenu.

## Cas d’utilisation 2 : Data Pipeline avec AWS
1. Utiliser **S3** pour stocker des fichiers de données bruts.
2. Créer une **Lambda** qui se déclenche lorsque de nouveaux fichiers sont ajoutés à S3.
3. **Lambda** envoie les données traitées à **Redshift** ou **DynamoDB** pour l’analyse.
