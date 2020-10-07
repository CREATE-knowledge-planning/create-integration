export NEO4J_HOST="172.22.208.1"
export NEO4J_PASSWORD="test_create"
export PRISM_PATH="$BASE_PATH/prism/prism/bin"
export PRISM_WSL="no"
export PROPAGATOR_JAR="$BASE_PATH/propagator/build/libs/propagator.jar"

cd simulator
python simulation_display.py
cd ..
