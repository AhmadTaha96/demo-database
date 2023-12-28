  ### Query 1: Find all flights departing after 8 PM (randomly selected time)

| flight_id | flight_no | scheduled_departure       |
|-----------|-----------|---------------------------|
| 1247      | PG0168    | 2017-09-13 20:05:00+03    |
| 1248      | PG0168    | 2017-09-11 20:05:00+03    |
| 1249      | PG0168    | 2017-07-23 20:05:00+03    |
| 1250      | PG0168    | 2017-08-05 20:05:00+03    |
| 1251      | PG0168    | 2017-09-12 20:05:00+03    |
| 1252      | PG0168    | 2017-07-17 20:05:00+03    |
| 1253      | PG0168    | 2017-07-18 20:05:00+03    |
| 1254      | PG0168    | 2017-07-27 20:05:00+03    |
| 1255      | PG0168    | 2017-07-28 20:05:00+03    |
| 1256      | PG0168    | 2017-08-28 20:05:00+03    |



### Query 2: Count the number of canceled flights
| cancelled_flights |
|-------------------|
| 414               |


### Query 3: List all airports with more than one flight departing on a given day (specified)

| departure_airport | number_of_departures |
|-------------------|----------------------|
| AAQ               | 2                    |
| ABA               | 3                    |
| AER               | 9                    |
| ARH               | 4                    |
| ASF               | 2                    |
| BAX               | 2                    |
| BZK               | 10                   |
| CEE               | 2                    |
| CEK               | 7                    |
| CNN               | 4                    |


### Query 4: Identify the most frequent travelers based on the number of tickets

| passenger_name     | ticket_count |
|--------------------|--------------|
| ALEKSANDR IVANOV   | 842          |
| ALEKSANDR KUZNECOV | 755          |
| SERGEY IVANOV      | 634          |
| SERGEY KUZNECOV    | 569          |
| VLADIMIR IVANOV    | 551          |
| ALEKSANDR POPOV    | 488          |
| VLADIMIR KUZNECOV  | 463          |
| ALEKSANDR PETROV   | 429          |
| ELENA KUZNECOVA    | 428          |
| TATYANA IVANOVA    | 425          |


### Query 5: Count the number of passengers for each travel class (fare_conditions) for all flights

| fare_conditions | passenger_count |
|-----------------|-----------------|
| Business        | 107642          |
| Comfort         | 17291           |
| Economy         | 920793          |


### Query 6: Count the number of passengers for each travel class (fare_conditions) on flight 7784 (specified)

| flight_id | fare_conditions | passenger_count |
|-----------|-----------------|-----------------|
| 1         | Business        | 12              |
| 1         | Economy         | 67              |
| 2         | Business        | 14              |
| 2         | Economy         | 87              |
| 3         | Business        | 15              |
| 3         | Economy         | 82              |
| 5         | Business        | 13              |
| 5         | Economy         | 80              |
| 6         | Business        | 14              |
| 6         | Economy         | 87              |
| 9         | Business        | 17              |
| 9         | Economy         | 114             |
| 12        | Business        | 14              |
| 12        | Economy         | 76              |
| 13        | Business        | 18              |


###   Query 7: Which day of the week has the highest number of flights

| day_of_week | number_of_flights |
|-------------|-------------------|
| 0           | 5022              |
| 4           | 4950              |
| 3           | 4932              |
| 2           | 4905              |
| 1           | 4824              |
| 6           | 4544              |
| 5           | 3944              |

### Query 8: Calculate the number of seats for each aircraft model
| model_en             | number_of_seats |
|----------------------|-----------------|
| Boeing 777-300       | 402             |
| Boeing 767-300       | 222             |
| Airbus A321-200      | 170             |
| Airbus A320-200      | 140             |
| Boeing 737-300       | 130             |
| Airbus A319-100      | 116             |
| Sukhoi Superjet-100  | 97              |
| Bombardier CRJ-200   | 50              |
| Cessna 208 Caravan   | 12              |


### Query 9: Find the Average Flight Duration for Each Aircraft Model

| model_en            | average_duration_hours         |
|---------------------|--------------------------------|
| Boeing 737-300      | 2.40557275541795665552         |
| Bombardier CRJ-200  | 1.98016776075857038597         |
| Boeing 767-300      | 4.0716503267973856             |
| Sukhoi Superjet-100 | 1.44784921189533348900         |
| Airbus A321-200     | 1.22829260013577732539         |
| Boeing 777-300      | 2.3574375678610206             |
| Airbus A319-100     | 5.6885149572649573             |
| Cessna 208 Caravan  | 2.34063946450188706086         |


### Query 10: Identify Flights with Seat Occupancy Percentage

| flight_id | boarding_passes | total_seats | occupancy_rate       |
|-----------|-----------------|-------------|----------------------|
| 1         | 79              | 170         | 46.470588235294116   |
| 2         | 101             | 170         | 59.411764705882355   |
| 3         | 97              | 170         | 57.05882352941176    |
| 17        | 101             | 170         | 59.411764705882355   |
| 18        | 96              | 170         | 56.470588235294116   |
| 21        | 85              | 170         | 50                   |
| 22        | 1               | 170         | 0.5882352941176471   |
| 25        | 115             | 170         | 67.64705882352942    |
| 26        | 90              | 170         | 52.94117647058824    |
| 27        | 92              | 170         | 54.11764705882353    |
| 36        | 98              | 170         | 57.647058823529406   |
| 37        | 100             | 170         | 58.82352941176471    |
| 38        | 83              | 170         | 48.8235294117647     |
| 46        | 97              | 170         | 57.05882352941176    |
| 47        | 105             | 170         | 61.76470588235294    |
| 52        | 98              | 170         | 57.647058823529406   |
| 53        | 90              | 170         | 52.94117647058824    |
| 54        | 83              | 170         | 48.8235294117647     |
| 55        | 3               | 170         | 1.7647058823529411   |
| 62        | 2               | 170         | 1.1764705882352942   |


### Query 11: Find Passenger Names Who Traveled to More Than 3 Different Destinations

| passenger_name      | destination_count |
|---------------------|-------------------|
| ADELINA BELYAEVA    | 5                 |
| ADELINA NIKOLAEVA   | 6                 |
| ADELINA POPOVA      | 5                 |
| ADELINA SIDOROVA    | 5                 |
| ADELINA SMIRNOVA    | 6                 |
| ADELINA TIKHONOVA   | 7                 |
| ADELINA ZAYCEVA     | 6                 |
| ADELINA ZHURAVLEVA  | 4                 |
| AIDA AKIMOVA        | 4                 |
| AIDA KISELEVA       | 4                 |


### Query 12: Distribution of Travel Class for Each Destination

| arrival_airport | fare_conditions | count |
|-----------------|-----------------|-------|
| AAQ             | Economy         | 8690  |
| AAQ             | Business        | 1044  |
| ABA             | Economy         | 1732  |
| ABA             | Business        | 169   |
| AER             | Economy         | 27631 |
| AER             | Business        | 3195  |
| AER             | Comfort         | 1831  |
| ARH             | Economy         | 5270  |
| ASF             | Economy         | 2609  |
| BAX             | Economy         | 2959  |


### Query 13: Find the Day with the Fewest Number of Flights

| day_of_week | number_of_flights |
|-------------|-------------------|
| 5           | 3944              |
