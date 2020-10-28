# terraform-coder

**How to Take this challange**
Clone this project, submit PR along with README to run your terraform  code.

1. **Create MYSQL Aurora DB**   
   Write Terraform code to build customized MYSQL Aurora DB and secure with security group.  Provide limited access to resources with in hosted VPC. 
2. **Create Autoscaling Group**
   
    Write Terraform code to build Autoscaling group along with Launch configuration and link ASG with Public ELB.

    Public ELB must listen on port 80 and 443 and forward both 80/443 requests to port 8080 on instances created by ASG. 
    
    Instances access must be limited to ELB only.

    Update security group(s), to access MYSQL Aurora cluster from EC2 instances created by Autoscaling group.

    **Bonus**:  Create code to write VPC module with 3 private,  3 public subnets  and host above infrastructure in it. 

    