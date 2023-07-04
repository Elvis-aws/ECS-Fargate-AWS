# virtualenv env
# source env/bin/activate
# pip3 install -r requirements.txt
# pip3 freeze > requirements.txt



# ecs-fargate-flask


(1) **Create two repositories**
    - Flask repo
    - Nginx repo
(2) **Create EC2 ubuntu instance**
    - login to instance
        - navigate to .pem file location
        - ssh -i ec2-key.pem  ubuntu@18.168.202.37
(3) **Run below commands on ubuntu server**
    - sudo apt-get update
    - sudo apt-get install docker-compose -y
(4) **Clone repo**
    - git clone https://github.com/srcecde/ecs-fargate-flask.git
(5) **Build and run image**
    - Navigate to flask directory
    - sudo docker-compose up --build (build creates both images)
(6) **Install aws cli**
    - Navigate out of repo
    - curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    - sudo apt install unzip
    - unzip awscliv2.zip
    - sudo ./aws/install
    - aws --version
(7) **Create ec2 - ecs container registry iam role**
    - Select
        - AmazonEC2ContainerRegistryFullAccess
    - Attach role to ec2 instance
(8) **Install libraries for ecr**
    - sudo apt install gnupg2 pass -y

(9) **Navigate to ecr**
    - Her push both images to ecr registry
    - Click on view push command
    - Execute commands
        - add sudo to the second docker login command
        - Login (aws ecr get-login-password --region eu-west-2 | sudo docker login --username AWS --password-stdin
          934433842270.dkr.ecr.eu-west-2.amazonaws.com)
        - Image 1 (Flask app)
            - sudo docker build -t flaskapp . (Build your image)
            - sudo docker tag flaskapp:latest 934433842270.dkr.ecr.eu-west-2.amazonaws.com/flask-app:latest
            - sudo docker push 934433842270.dkr.ecr.eu-west-2.amazonaws.com/flask-app:latest
        - Image 2 (Nginx app)
            - sudo docker build -t nginx .
            - sudo docker tag nginx:latest 934433842270.dkr.ecr.eu-west-2.amazonaws.com/nginx:latest
            - sudo docker push 934433842270.dkr.ecr.eu-west-2.amazonaws.com/nginx:latest
(10) Configure and run tasks in ecs
    - Create a task definition
    - Create a cluster to run your task as a service
    - Create a service in your cluster
    -

**Video link**
https://www.youtube.com/watch?v=L6dEGHrJXIA&list=PL5KTLzN85O4I4ljDgueVff0UxIKXtzi-8&index=4