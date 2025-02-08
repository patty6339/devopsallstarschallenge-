#!/bin/bash

# Set variables
AWS_REGION="us-east-1"
AWS_ACCOUNT_ID="148761640527"  # Replace with your AWS Account ID
TASK_FAMILY="sports-api-task"
IMAGE_URI="${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/sports-api:sports-api-latest"
SPORTS_API_KEY=8235b696f42ac5205f9ac91fe2ca9ba5bb61daf1cd0215b1b4b20a41588c6e75 # Replace with your actual API key

# Register ECS Task Definition
aws ecs register-task-definition \
  --region $AWS_REGION \
  --family $TASK_FAMILY \
  --network-mode "awsvpc" \
  --requires-compatibilities "FARGATE" \
  --execution-role-arn "arn:aws:iam::${AWS_ACCOUNT_ID}:role/ecsTaskExecutionRole" \
  --cpu "256" \
  --memory "512" \
  --container-definitions "[
    {
      \"name\": \"sports-api-container\",
      \"image\": \"$IMAGE_URI\",
      \"memory\": 512,
      \"cpu\": 256,
      \"essential\": true,
      \"portMappings\": [
        {
          \"containerPort\": 8080,
          \"hostPort\": 8080,
          \"protocol\": \"tcp\"
        }
      ],
      \"environment\": [
        {
          \"name\": \"SPORTS_API_KEY\",
          \"value\": \"$SPORTS_API_KEY\"
        }
      ]
    }
  ]"

echo "ECS Task Definition '$TASK_FAMILY' registered successfully!"
