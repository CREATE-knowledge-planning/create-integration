# Integrated CREATE simulation

This collects the instructions from https://github.com/CREATE-knowledge-planning/simulator/blob/master/README.md into a single repository.  

### Linux instructions

#### Prerequisites

- A working Python 3.7+ distribution
- A working Java JDK 11+
- A working C++ compiler
- Neo4J 4+ server (https://neo4j.com/), with a non-default password (https://neo4j.com/docs/operations-manual/current/configuration/set-initial-password/). The Neo4J server should be running before following the steps.

Clone this repo, then from within the directory:
- `$ ./setup.sh`
will clone all the sub-repos, then build prism

Then whenever you want to run the integration code:
- `$ ./venvstart.sh`
will enter the python venv, setting the appropriate environment variables.  The same script will also initialize the venv if it hasn't been created yet.

Once in the virtual environment, as a first time setup, run:
- `$ ./fill_db.sh`

Finally, to run a gauntlet of simulations:
- `$ ./run_simulation_display.sh`
