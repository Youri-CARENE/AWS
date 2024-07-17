#!/bin/bash

# Déployer des ressources AWS

echo "Déploiement des ressources AWS..."

# Créer un groupe de sécurité
aws ec2 create-security-group --group-name my-security-group --description "My security group"

# Lancer une instance EC2
aws ec2 run-instances --image-id ami-0abcdef1234567890 --count 1 --instance-type t2.micro --key-name MyKeyPair --security-groups my-security-group

# Créer une table DynamoDB
aws dynamodb create-table --table-name MyTable --attribute-definitions AttributeName=Id,AttributeType=S --key-schema AttributeName=Id,KeyType=HASH --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5

echo "Déploiement terminé."
