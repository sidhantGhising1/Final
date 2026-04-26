Qn. 3 -> so from develop branch i added functionality of sum(addition) in server.js while in same line i added subtraction functionality from feature branch
         so there will be merge conflict as to which line will be kept in the main branch.
         Conflicts shows like <<<<<from outgoing branch and >>>>>>>from incoming branch .
         Incoming branch is the one that wants to merge code on to it that has changes. so we have to decide which to keep by communicating
         with each other with the devs. We just remove the tags of <<<<<< and >>>>> and keep the code we want it on the main branch.
         And finally push to the main and update the main branch.


Qn. 9 -> Configuring environment variables securely for an application we create .env files and we put all the sensitive 
         credentials that we dont want to expose to the general public. We also use HashiCorp vault for storing our private sensitive 
         information and other third party tools to manage our environment variables securely.

Qn. 5 -> we run container on cloud service providers like aws using docker. We launch an ec2 instance on aws then configure it 
         by firstly installing runtime for that specific programming language like for java we install jdk runtime environments.
         Then we install dependencies needed to run that application like package.json in javascript and requirements.txt in python.
         Then we do like git initialization, install docker then run using commands written in docker files or run commands like 
         npm run start or npm run dev which is mentioned like on package.json commands or scripts. If the application fails to start
         we also configure settings inside aws that has inbound and outbound traffic rules. Inbound traffic are the ones that
         comes to the aws and outbound traffics are the ones that goes away from aws. These are the rules like from where i can 
         access the deployed container of that ec2 virtual machine and similarly have types like HTTP and HTTPS and we can 
         also make it custom for testing in only our closed environments.

Qn. 15 -> For end-to-end deployment lifecycle we have development , testing, staging and production environments. Throughout this
         processes we do practical coding development of the application using respective tech stacks then run testing using
         automation as well as manual testing by writing scripts. Then we having staging environment its almost similar
         to deployment environment only it has less and limited features to test the application as thers is cost effective
         breakdown and save capital for the company. While production environment is full fledged app delivered to the users.
         Some company also have like deployments environment and then production environment depending on the company policy
         requirements and breackdowns. Possible failure points are mainly in testing and staging environments where the code 
         and application functionality undergoes rigorous testing and compliants. Failure can also be on production stage.
         To prevent this we do like versioning ov the application. We route user traffic to certain versions of the application
         and until the application is fully stable we dont fully traverse the actual route to the versioning application.
         
