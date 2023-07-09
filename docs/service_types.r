

*******
Replica
*******
    - The replica scheduling strategy places and maintains the desired number of tasks across your cluster. By default,
      the service scheduler spreads tasks across Availability Zones. You can use task placement strategies and constraints
      to customize task placement decisions
******
Daemon
******
    - The daemon scheduling strategy deploys exactly one task on each active container instance that meets all of the
      task placement constraints that you specify in your cluster. When using this strategy, there is no need to specify
      a desired number of tasks, a task placement strategy, or use Service Auto Scaling policies
*****
Notes
*****
    - This means that, if you have an ECS cluster with three EC2 instances and you want to launch a new service with
      four tasks, the following will happen
    *******
    Replica
    *******
        - Your four tasks will start randomly distributed over your container instances. This can be all four on one
          instance or any other random distribution. This is the use case for normal micro services
    ******
    Daemon
    ******
        - For a daemon you do not specify how many tasks you want to run. A daemon service automatically scales depending
          on the amount of EC2 instances you have. In this case, three. A daemon task is a pattern used when building
          microservices where a task is deployed onto each instance in a cluster to provide common supporting functionality
          like logging, monitoring, or backups for the tasks running your application code