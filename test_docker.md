# ICU Slack Bot

This Slack bot allows you to manage incidents in your Slack workspace. To run this bot locally in your Slack workspace, we have two ways to create your local environment. The steps are listed below:

## Docker Compose installation guide

### Requirements

* [Docker Desktop](https://www.docker.com/products/docker-desktop/) 
* [GitHub create personal token](https://docs.github.com/en/enterprise-server@3.9/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#creating-a-personal-access-tokens)

### Installation

1. Clone this repository, and replace the user and token with yours.

```
git clone https://[git-user]:[git-token]@github.com/jive/icu-bot.git
```
> [!WARNING] 
> If you have a Postgres database running on your local machine, you might have to kill the `PID` following this command:
> ```
> sudo lsof -i :5432
> ```
> now you have the `PID` to kill the process 
> ```
> kill -9 "PID"
> ```
2. Set up your environment variables by creating a `.env` file with the following variables:
> [!NOTE]
> The `.env` must go under `PATH/icu-bot/.env` 
>
> For the env variables DB_NAME, DB_USERNAME, and DB_PASSWORD go to `local-env/.env.postgres` and match the postgres variables.
```
OUTAGE_CHANNEL_ID=<your_outage_channel_id>
    
DB_NAME=<POSTGRES_DB>
    
DB_USERNAME=<POSTGRES_USERD>

DB_PASSWORD=<POSTGRES_PASSWORD>
    
DB_HOST=db
    
DB_PORT=5432

SLACK_BOT_TOKEN=<your_slack_bot_token>

SLACK_APP_TOKEN=<your_slack_app_token>

JIRA_ACCESS_TOKEN=<your_dev_jira_token>
    
ENV=local
```
3. Move to the `local-env` directory

```
cd local-env 
```
Replace the placeholders with the appropriate values for your environment.

4. Run Docker Compose.

```
docker compose -f docker-compose.yaml up  
```
5. The bot should now be running locally and connected to your Slack workspace.

> [!NOTE]
> To stop the docker compose type this command under the `local_env` directory
>```
>docker compose down 
>```
> To remove the docker compose volume(database) type this command under the `local_env` directory
>```
>docker compose down -v 
>```

## Step-by-step installation guide

### Requirements

1. Python 3.6 or higher
2. A Slack account with the bot added to the desired workspace
3. PostgreSQL installed on your local machine

### Installation

1. Clone this repository.
2. Set up a virtual environment and activate it:

```
python3 -m venv venv
```
```
source venv/bin/activate
```

3. Install the required packages:
```
pip install -r requirements.txt
```

4. Ensure your local PostgreSQL instance is running.

5. Set up your environment variables by creating a `.env` file with the following variables:

```
OUTAGE_CHANNEL_ID=<your_outage_channel_id>
    
DB_NAME=<your_database_name>
    
DB_USERNAME=<your_database_username>

DB_PASSWORD=<your_database_password>
    
DB_HOST=<your_database_host>
    
DB_PORT=<your_database_port>

SLACK_BOT_TOKEN=<your_slack_bot_token>

SLACK_APP_TOKEN=<your_slack_app_token>

JIRA_ACCESS_TOKEN=<your_dev_jira_token>
    
ENV=local
```

Replace the placeholders with the appropriate values for your environment.

6. Run the main.py script:

```
python3 incident-app.py
```

7. The bot should now be running locally and connected to your Slack workspace.

## Usage

This bot has several commands to manage incidents:

1. To declare a new incident, type `/incident` in a non-incident channel.
2. To update an existing incident, type `/incident update` in the incident channel.
3. To mark a message as an action taken, use the `shortcut_incident_action_taken` shortcut.
4. To add a message to the incident timeline, use the `add_to_timeline` shortcut.
5. To view the incident timeline, type `/incident timeline` in the incident channel.

if you have any question, feel free to reach out to #first-response-team channel on Slack! 

## Contributing

If you'd like to contribute to this project, feel free to open an issue or submit a pull request. Make sure to follow the code style and write tests for any new features or changes.

## License

This project is licensed under the MIT License. See the LICENSE file for details.
