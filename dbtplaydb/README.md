Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices


## Edit the profile page in VS Code
Cmd + Shift + P enter shell and pick the add vscode path into the shell  
`code ~/.dbt/profiles.yml`  

Change the schema in profiles to   
`schema: target`  

All objects in the schema are dropped by name and recreated
if the schema name is changed then one has to manually drop those model objects



