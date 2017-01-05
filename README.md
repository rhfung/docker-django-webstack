Docker Django Base Image
=======================

The goal of this image is to run a Django web application with a front-end preprocessed using Webpack.
The base Python and NPM dependencies are installed.

Each Dockerized application extends from the base image to run `pip` and `npm`

Install dependencies:

  * Python 2.7
  * Postgresql client
  * Node 6

Hints for npm:

   npm install --unsafe-perm --allow-root --ignore-scripts -d


