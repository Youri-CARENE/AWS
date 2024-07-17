#!/bin/bash

# Nettoyer les ressources AWS

echo "Nettoyage des ressources AWS..."

# Supprimer les instances EC2
INSTANCE_IDS=$(aws ec2 describe-instances --query "Reservations[*].Instances[*].InstanceId" --output text)
aws ec2 terminate-instances --instance-ids $INSTANCE_IDS

# Supprimer le groupe de sécurité
SECURITY_GROUP_ID=$(aws ec2 describe-security-groups --query "SecurityGroups[?GroupName=='my-security-group'].GroupId" --output text)
aws ec2 delete-security-group --group-id $SECURITY_GROUP_ID

# Supprimer la table DynamoDB
aws dynamodb delete-table --table-name MyTable

echo "Nettoyage terminé."
