# dbt-postgresql
DBT playground for PostgreSQL

Install DBT and PostgreSQL Plugin
Using these instructions
https://docs.getdbt.com/docs/core/pip-install

Create a virtual environment
`python3 -m venv env`

Activate the virtual environment
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




