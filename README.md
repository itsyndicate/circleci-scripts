# CircleCI-scripts

-----------
## update-variable.sh

### Description
This bash script is designed to interactively update an environment variable across multiple projects on CircleCI via API.
This script is a convenient way to update an environment variable across multiple projects on CircleCI without having to manually update each one.


### How to Use

1. Open a terminal.

2. Navigate to the directory where the `update-variable.sh` script is located.
3. Make the script executable with the following command: `chmod +x update-variable.sh`
4. Run the script: `./update-variable.sh`
5. The script will prompt you to enter your VCS provider (either "gh" for GitHub or "bb" for Bitbucket), your organization name, your CircleCI token, the name of the environment variable to update, its new value, and the names of the projects (separated by spaces) where the variable should be updated.
6. After you've entered all the required information, the script will automatically send requests to the CircleCI API to update the specified environment variable in each of the specified projects.
-----------