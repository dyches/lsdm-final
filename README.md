# lsdm-final
A web and database application for querying food products.

## Description

A web application with accompanying database for querying food products
in the US, Mexico, and the UK for their ingredients. This web app will
list the ingredients, including common allergens, and allow users to
exclude products with specified ingredients. 

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Credits](#credits)
- [License](#license)

## Installation

Installation requires Docker and Docker-Compose. 
Preprocessing is done via python scripts, and requires the pandas and
langdetect modules.

Clone the repo to the desired location. To get the food data in the database,
copy the csv data from [Open Food
Facts](https://world.openfoodfacts.org/data),place it in the *utils* directory
run `preprocessing.py`. Once the script finishes, move the `foodfacts.csv` file
into the *database* directory.

The following commands should be run from the project's root.
```
docker-compose run web python manage.py makemigrations
docker-compose run web python manage.py migrate
```

### Removal
To uninstall, run
```
docker-compose down --volumes
```
from the project's root.

## Usage

To use run `sudo docker-compose up` from the project's root directory. If
errors occur, adding the `--build` option to the previous command may solve the
issue. 

If both containers successfully build, but the logs indicate that the web-app
couldn't connect to the database, then stopping and restarting will often fix
the problem.

Once the containers are running, a webpage should then be displayed at
<http://localhost:8000>. The database container can be entered into with
```
docker exec -it lsdm-final-db-1 psql -U postgres
```

To stop the app, either use *Ctrl+C* in the same terminal as used to run the
previous command, or open a new terminal window, navigate to the project's root
directory, and run `docker-compose down`.

## Credits

This project is developed as part of CS-4243/5493 Large-Scale Data
Management, taught by Professor Ritu Arora. The project is being developed by
Kathryn Dyches, Michelle Mendez, Julian De La Rosa, Somraj Dangi, John Deleon,
and Brendan Winn.

## License

MIT: <https://mit-license.org>
