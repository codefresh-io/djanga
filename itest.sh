echo "Starting test"

# Create a new container, link it to the web container (created in the composition) and test the webapp with a curl request.
# In the context of an integration test, all containers create in the composition are prefixed with `integration_` and suffixed by the container's index
docker run -it --link integration_web_1:web phusion/baseimage bash -c "curl --silent \"http://web:8000\" > /dev/null"

exit=$?
