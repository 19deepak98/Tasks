1. Create a launch template in which we will define all the configuration related to the ec2 machine.
    eg. machine-type, ami, user-data, sg, VPC, and network configurations.
    Note : In user data we can add the below steps to deploy the code on ec2 machine.
        a. Clone the repo in particular repo like /var/www/html
        b. Than do some configuration changes if need
        c. change some permissions of files and change ownership of files.
        d. Than start the web server

2. We will create a ASG.
    a. While ASG creation will mention the launch template.
    b. Mention all requred configuration related to the networking and subnets.
    c. Will select ALB and it can be exsting one or can create a new one in ASG settings.
3. Than will create a cloudwatch alarm and in trigger will choose the ASG that we created in second step.
4. Now in ASG will create dynamic scaling policy using step scaling in which we choose the alarm that we created and setup the trigger policy.


Note - Here I wrote all the steps which we can do, because we also had same type of setup in my current company for blogs that's why I had the idea of this.
