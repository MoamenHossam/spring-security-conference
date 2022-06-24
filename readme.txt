this is a demo for how to use spring security

1- please make sure that mysql docker instance is up and running first
2- run the quires in the database.sql file in your mysql workbench after connecting to the running mysql instance
3- /  can be accessed by everyone ( public) 
4- /regestration can only be accessed if the user have ROLE_ADMIN
5- /user can be accessed if the user have ROLE_ADMIN or ROLE_USER


there is two users already in the data base 
1-username : moamen     password : moamen   this user has ROLE_USER
2-username : kahky      password : kahky    this user has ROLE_ADMIN
s3://us.com.syngenta.panda.prod/PROD/Loaders/VCF-Files/Plutella xylostella/HEI3976SNP_pipe_filtered.vcf_sed_head.vcf_filtered.vcf_rehead.vcf.setID.vcf_validated.vcf