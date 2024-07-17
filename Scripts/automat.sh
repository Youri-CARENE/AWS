echo '#!/bin/bash' > deploy.sh
echo '' >> deploy.sh
echo '# Déployer des ressources AWS' >> deploy.sh
echo '' >> deploy.sh
echo 'echo "Déploiement des ressources AWS..."' >> deploy.sh
echo '' >> deploy.sh
echo '# Créer un groupe de sécurité' >> deploy.sh
echo 'aws ec2 create-security-group --group-name my-security-group --description "My security group"' >> deploy.sh
echo '' >> deploy.sh
echo '# Lancer une instance EC2' >> deploy.sh
echo 'aws ec2 run-instances --image-id ami-0abcdef1234567890 --count 1 --instance-type t2.micro --key-name MyKeyPair --security-groups my-security-group' >> deploy.sh
echo '' >> deploy.sh
echo '# Créer une table DynamoDB' >> deploy.sh
echo 'aws dynamodb create-table --table-name MyTable --attribute-definitions AttributeName=Id,AttributeType=S --key-schema AttributeName=Id,KeyType=HASH --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5' >> deploy.sh
echo '' >> deploy.sh
echo 'echo "Déploiement terminé."' >> deploy.sh

echo '#!/bin/bash' > cleanup.sh
echo '' >> cleanup.sh
echo '# Nettoyer les ressources AWS' >> cleanup.sh
echo '' >> cleanup.sh
echo 'echo "Nettoyage des ressources AWS..."' >> cleanup.sh
echo '' >> cleanup.sh
echo '# Supprimer les instances EC2' >> cleanup.sh
echo 'INSTANCE_IDS=$(aws ec2 describe-instances --query "Reservations[*].Instances[*].InstanceId" --output text)' >> cleanup.sh
echo 'aws ec2 terminate-instances --instance-ids $INSTANCE_IDS' >> cleanup.sh
echo '' >> cleanup.sh
echo '# Supprimer le groupe de sécurité' >> cleanup.sh
echo 'SECURITY_GROUP_ID=$(aws ec2 describe-security-groups --query "SecurityGroups[?GroupName==\'my-security-group\'].GroupId" --output text)' >> cleanup.sh
echo 'aws ec2 delete-security-group --group-id $SECURITY_GROUP_ID' >> cleanup.sh
echo '' >> cleanup.sh
echo '# Supprimer la table DynamoDB' >> cleanup.sh
echo 'aws dynamodb delete-table --table-name MyTable' >> cleanup.sh
echo '' >> cleanup.sh
echo 'echo "Nettoyage terminé."' >> cleanup.sh

chmod +x deploy.sh cleanup.sh
