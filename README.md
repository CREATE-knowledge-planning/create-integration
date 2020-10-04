# Integrated CREATE simulation

This collects the instructions from https://github.com/CREATE-knowledge-planning/simulator/blob/master/README.md into a single repository.  

### Linux instructions

Clone this repo, then from within the directory:
- `$ ./setup.sh`
will clone all the sub-repos, then build prism

Then whenever you want to run the integration code:
- `$ ./venvstart.sh`
will enter the python venv, setting the appropriate environment variables.  The same script will also initialize the venv if it hasn't been created yet.
