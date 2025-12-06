
<h2>Step 1. Role and User Creation</h2>

In short, I created a "transform" role, a DBT user, granted permissions to the "transform" role, and assigned the DBT user to have this role. I also created the default warehouse here. 

Here is the <a href="https://github.com/w7978708wen/DataBuildTool-Snowflake-AmazonWebServices/blob/main/Role%20and%20user%20creation.sql">code </a>. 

<h2>Step 2. Created the stage to connect to AWS </h2>

I created the internal permission to access the data. I created a new user within my AWS Console and assigned it with "AmazonS3FullAccess" permission. 

I retrieved the user's credentials to create a stage in Snowflake.


