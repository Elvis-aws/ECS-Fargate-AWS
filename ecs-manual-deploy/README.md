
# fargate
- Suitable for small applications with less traffic and occasional over load
- Batch processing
- Crone Jobs
- U do not want to manage servers

# ecs-fargate-flask
- Cd ecs-manual-deploy
- Run docker-compose up --build
- Deploy template
  - sam build 
  - sam deploy --guided 
  - sam deploy 
- Navigate to ECR where you will find the created repositories
  - We want to push both images to respective ecr registry
  - Select repo
  - Click on view push command
  - Execute commands
      - add sudo to the second docker login command
        (1) Login to docker
        (2) Build image: Since we already ran docker compose up, we are fine as both images exist
        (3) Tag image: Edit the image to be tagged in the command
        (4) Push image with last command
- Configure and run tasks in ecs
  - Create a task definition
    - Create task with flask and nginx containers
    - Startup dependency (Container name: Flask, Condition Start)
    - Select Linux/ARM64 which is compatible with Mac as docker file is python image
  - Create a cluster to run your task as a service
  - Create a service in your cluster
    - Select Service created
    - Select Tasks 
    - Select the running task
    - In configuration tab, copy the public ip

**Video link**
https://www.youtube.com/watch?v=L6dEGHrJXIA&list=PL5KTLzN85O4I4ljDgueVff0UxIKXtzi-8&index=4