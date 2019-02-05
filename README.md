# Greynir in a docker container

This setup uses nginx and gunicorn to serve the flask web app greynir. As such it shouldn't need many changes to be production ready but this is intended for local development at the moment an can not be recommended in a production setup.

You'll need to have docker installed and git in some sort of bash like shell.

See https://docs.docker.com/install/

If on Windows, https://gitforwindows.org/ should provide you with other tooling needed.

## Quick start

1. Clone the Reynir repository under src

```
mkdir src
cd src
git clone git@github.com:vthorsteinsson/Reynir.git
```
2. After cloning this repository run `docker-compose up` start greynir.

3. Visit `localhost:5050`

## In development

You can also run Greynir using locally cloned versions of the following packages. `run-dev.sh` clones the needed repositories, overrides the default docker-compose file and starts Greynir. 

After you've confirmed `localhost:5050` is working as intended you can also run `run_tests.sh` to ensure the installation is working.

When in development mode, gunicorn should reload any changes made to speed up development.

## Further configuration

For further configuration please see the file `docker-compose.yml` (and `docker-compose-dev.yml`, and the files under `conf`, if you'd like to change ports, add a certificate to nginx etc.

`conf/bin/start.sh` and `/conf/bin/start_dev.sh` may also be of interest.

## Known issues

You need to manually fetch the content under `ReynirPackage/src/reynir/resources`
