

***************
Task Definition
***************
    - To prepare your application to run on Amazon ECS, you create a task definition. The task definition is a text
      file, in JSON format, that describes one or more containers, up to a maximum of ten, that form your application.
    - It can be thought of as a blueprint for your application. Task definitions specify various parameters for your
      application. Examples of task definition parameters are which containers to use, which launch type to use, which
      ports should be opened for your application, and what data volumes should be used with the containers in the task.
    - The specific parameters available for the task definition depend on which launch type you are using.
    - A task is the instantiation of a task definition within a cluster. After you create a task definition for your
      application within Amazon ECS, you can specify the number of tasks to run on your cluster.
    - An Amazon ECS service runs and maintains your desired number of tasks simultaneously in an Amazon ECS cluster.
      How it works is that, if any of your tasks fail or stop for any reason, the Amazon ECS service scheduler launches
      another instance based on your task definition. It does this to replace it and thereby maintain your desired
      number of tasks in the service.