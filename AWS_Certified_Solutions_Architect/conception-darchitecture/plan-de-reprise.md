# Plan de Reprise après Sinistre (DR)

Le Plan de Reprise après Sinistre (Disaster Recovery) est une stratégie pour restaurer des systèmes critiques après une catastrophe.

## Modèles de reprise après sinistre sur AWS :
- **Backup and Restore** : Sauvegarder vos données et restaurer les services dans une autre région ou zone.
- **Pilot Light** : Maintenir une copie minimale des systèmes critiques, prête à être activée en cas de sinistre.
- **Warm Standby** : Garder une version plus réduite de votre infrastructure prête à être agrandie et activée.
- **Multi-Site Active-Active** : Exécuter votre infrastructure sur plusieurs sites pour garantir la disponibilité en cas de sinistre.

## Outils AWS pour la reprise après sinistre :
- **S3 et Glacier** : Pour sauvegarder les données critiques.
- **CloudFormation** : Pour restaurer rapidement des environnements via des modèles préconfigurés.
- **Route 53** : Permet le basculement automatique du trafic vers un site de secours.
