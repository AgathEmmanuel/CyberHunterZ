

# Data Ops  


## Data Pipeline 1

Objective: Detect bots trying to connect to a VMs port number thats not allowed  

Reading network Security Group logs  



For Cloud service providers  
steps:  
- Go to Netoworking section  
- Add inbound security rule  
- Add destination port ranges  
- Add inpbound port rule  
- enable Network Security Group flow logs  
- creates log flow for all requests flowing in & out of VM  
- flow logs get recorded in storage accounts  


sql query pooling can be used to extract the required data  

