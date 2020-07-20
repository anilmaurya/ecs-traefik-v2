# Deploying traefik on ECS with built in Lets Encrypt SSL

## Steps to build docker image and push on ECR

```
Install AWS CLI https://aws.amazon.com/cli/

export AWS_REGION='YOUR_AWS_REGION'

export AWS_ACCOUNT_ID='YOUR_ACCOUNT_ID'

export ECR_REPO_NAME='YOUR_REPO_NAME'

(aws ecr create-repository --repository-name $ECR_REPO_NAME) || true

eval $(aws ecr get-login --no-include-email --region eu-central-1)

docker build -t $ECR_REPO_NAME:\latest .

docker tag $ECR_REPO_NAME:\latest $AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/$ECR_REPO_NAME:\latest

docker push $AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/$ECR_REPO_NAME:\latest
```
