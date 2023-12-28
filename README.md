# Demo Database

## Overview

This project utilizes a sample database provided in `demo-small-en.zip`. The database schema is designed to represent a simplified version of a flight booking system suitable for querying.

### Source

The database is sourced from [demo-small-en.zip](https://edu.postgrespro.com/demo-small-en.zip).

### Schema and Tables

The schema includes multiple tables such as `flights`, `tickets`, `bookings`, `aircrafts_data`, `airports`, `seats`, and more. Each table is designed to represent different entities in the flight booking and management system:

- **Flights**: Contains details about flight schedules, statuses, and routes.
- **Tickets**: Stores information about passenger tickets.
- **Bookings**: Holds booking references and related details.
- **Aircrafts_Data**: Includes data about different aircraft models.
- **Airports**: Lists airport details.
- **Seats**: Manages seating arrangements and classifications.

## Setting Up the Database

### Using PostgreSQL

This project is set up and managed using PostgreSQL Database System.

#### Importing Data
To import the database from the provided SQL file,  We use the following command:
``` psql -f demo-small-en-20170815.sql -U postgres```

### Connecting to the Database  

1. **Connect to the Database**: Using ```\c demo```

2. **View Tables**: To see all tables information in the database, We use: ```\dt```

We exported the result of each query as csv file to be included in the file Queries.md using ```\copy``` command.
