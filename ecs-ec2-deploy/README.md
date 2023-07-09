
# fargate
- Suitable for small applications with less traffic and occasional over load
- Batch processing
- Crone Jobs
- U do not want to manage servers

# ecs-fargate-flask
- Deploy template
  - sam build 
  - sam deploy
- Verify installations
  - docker --version
  - aws --version
- login to instance
    - navigate to .pem file location
    - ssh -i ec2-key.pem  ubuntu@18.168.202.37
- Clone repo
  - git clone https://github.com/Elvis-aws/ecs-fargate-flask-app.git
- Navigate to flask directory: cd ecs-fargate-flask-app
- sudo docker-compose up --build (build creates both images)
- Copy Instance public IP
- Access running flask application

**Video link**
https://www.youtube.com/watch?v=L6dEGHrJXIA&list=PL5KTLzN85O4I4ljDgueVff0UxIKXtzi-8&index=4