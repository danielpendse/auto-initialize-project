Auto Initalize Project automates the start of a new project using a zsh script that creates a folder at the desired path and also creates a GIT repository and does the first commit. 

# Installation
- git clone git@github.com:danielpendse/auto-initialize-project.git
- cd auto-initialize-project
- chmod 0500 initialize.sh
- touch .env
- Type in your github token, github username and the desired filepath for the projects in the env file, according to the file format. 

# env file format
GITHUB_API_TOKEN="your_api_token"
FILEPATH="Your_project_file_path"
GITUSERNAME="your_github_username"

# How to use
./initialize NewProjectFolderName

The project opens up VSCode if alias is set to ```code . ``` 
