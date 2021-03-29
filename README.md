## README.md
Azure App Services + Flask + Postgres V0.5
This in an app, that has an almost complete pipeline. The principal goal is making a FLASK served frontend that allows you to put your e-mail and recieve some information (via e-mail) from a Postgres Database hosted in a Virtual Machine deployed by ansible. The github actions pipeline is configured that each commit you will Run the Jobs and Deploy to azure web services

### Requeriments 📋
- Ansible ☄️
- Python 🐍
- Azure Cloud access ☁️ : Virtual Machine & Az App services
- Used tech 👨‍💻
- Ansible ☄️
- Flask ⚗️
## Libraries 📒 - 
Requeriments.txt
- blinker==1.4
- click==7.1.2
- Flask>=1.0,<=1.1.2
- Flask-Mail==0.9.1
- itsdangerous==1.1.0
- Jinja2==2.11.3
- MarkupSafe==1.1.1
- psycopg2-binary==2.8.6
- Werkzeug==1.0.1
## List of Routes 📖
Version	Route	Behavior
- 0.1	/	Render the template index.html
- 0.5	/send_msg	form to send data to email adress

#### PSQL_HOST= Your virtual machine IP host
PSQL_DATABASE= You can let default postgres or use the one that you will create in ANSIBLE-PLAYBOOK
PSQL_USER= You can let default postgres or use the one that you will create in ANSIBLE-PLAYBOOK
PSQL_PASS= The user password created with ANSIBLE-PLAYBOOK
MAIL= Your testing mail adress to send python emails (Access to less secure apps activated)
MAIL_PASS= The password of your testing mail
Setting up the PSQL database in a Virtual Machine with ansible! 🖥️
Create the inventory ( or hostfile ) 📂
Inside the ansible folder you can create your inventory file:

host.yml 📜

[azure-web-ser]
IpAdress-of-your-VM


ansible-playbook -i hosts playbook.yml --key-file "your ssh key here"  -vvv 
After all that, your PostgresSQL should be installed and running in your VM, just dont forget to modify your Postgres config files : ⚙️

### modify conf string
 sudo vim /etc/postgresql/10/main/pg_hba.conf 

host    all    all    0.0.0.0/0    md5
And modify your postgresql.conf ⚙️

 sudo vim /etc/postgresql/10/main/postgresql.conf
In authentication and connection server: listen_addresses="*"

Populate your database with dummy data 📝⚙️📋 :
Inside the server folder, there are some functions that generate random names and scores to populate your Database, you can call the function from your main.py or app.py


### flask run
☁️☁️ Deploy in the CI/CD of Azure ☁️☁️
in the folder .github/workflows there is the playbook.yml file
