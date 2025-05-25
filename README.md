# dbt-postgresql
DBT playground for PostgreSQL

Install DBT and PostgreSQL Plugin
Using these instructions
https://docs.getdbt.com/docs/core/pip-install

Create a virtual environment  
`python3 -m venv env`

This would create an env folder with all the necessary folder and files to run Python within this folder.

Activate the virtual environment by running a script within the environment folder  
`source env/bin/activate`

This should display the environment name in front of the command line  
`(env) user@computername dbt-postgresql`


Verify Python path  
`which python`  
This should list your project virtual environment with bin/python  

Run Python from this environment
To be done only if you need the python shell from this location  
`env/bin/python`

Check there are no packages installed   
`pip list`  
This should only show the pip package 


Install DBT and the PostgreSQL Adapter or Plugin  
`pip install dbt-core dbt-postgres`

This would download a whole lot of packages and place it under the env/lib folder

Check if dbt is working fine by  
`dbt --version`  
This should list out  
Core:
  - installed: 1.9.4
  - latest:    1.9.4 - Up to date!

Plugins:
  - postgres: 1.9.0 - Up to date!

DBT Sample Projects  
https://docs.getdbt.com/faqs/Project/example-projects


The goal of this project is to transform the existing table "customer" in "sales" schema to another table and a view in a "target" schema.

First use the seed.sql file to setup the sales schema and customer table
populate some values

Then using DBT we shall be doing
First a view that only selects the id and full name. This is present in view_customer_model.sql
Second is a table that selects the id and Full name but splits the full name into first name and last name using a simply split.

You would also see some example file from dbt init which would create a table and a view. This you can keep or delete.


Note:
When checkin to github
Since you are already in the dbt project folder come to the parent folder and then do the check-in  
Else only the dbt project files would be checked in.


