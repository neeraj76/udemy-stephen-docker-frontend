# The project frontend has been created using following command:
npx create-react-app frontend


# Github repo
git clone git@github.com:neeraj76/udemy-stephen-docker-frontend.git

# Travis-CI: neeraj76/udemy-stephen-docker-frontend
# Use .travis.yml file to give instructions to Travis CI

In the upcoming lecture we will be adding a script to our .travis.yml file. Due to a change in how the Jest library works with Create React App, we need to make a small modification:

script:
  - docker run USERNAME/docker-react npm run test -- --coverage

instead should be:

script:
  - docker run -e CI=true USERNAME/docker-react npm run test

The code will now look like this:

access_key_id: $AWS_ACCESS_KEY
secret_access_key: $AWS_SECRET_KEY

# Aws Generate API Keys from IAM
IAM:
i) Users: Add User
User:
docker-react-travis-ci

# We use a feature environment secret used by travis-CI to provide the keys
