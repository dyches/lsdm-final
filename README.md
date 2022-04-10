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

Installation requires Docker and Docker-Compose. Simply clone the repo to the
desired location.

## Usage

To use run `sudo docker-compose up` from the project's root directory. If
errors occur, adding the `--build` option to the previous command may solve the
issue. The webpage should then be displayed at <http://localhost:8000>.

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
