-- ** Query 1: Find all flights departing after 8 PM (randomly selected time)

SELECT *
FROM flights
WHERE scheduled_departure::time > '20:00:00';


-- ** Query 2: Count the number of canceled flights.

SELECT COUNT(*) AS cancelled_flights
FROM flights
WHERE status = 'Cancelled';


-- ** Query 3: List all airports with more than one flight departing on a given day (specified).

SELECT departure_airport, COUNT(*) AS number_of_departures
FROM flights
WHERE scheduled_departure::date = '2017-08-28'
GROUP BY departure_airport
HAVING COUNT(*) > 1 limit 10;


-- ** Query 4: Identify the most frequent travelers based on the number of tickets.

SELECT passenger_name, COUNT(*) AS ticket_count
FROM tickets
GROUP BY passenger_name
ORDER BY ticket_count DESC
LIMIT 10;


-- ** Query 5: Count number of passengers for each travel class (fare_conditions) for all flights

SELECT fare_conditions, COUNT(*) as passenger_count
FROM tickets 
JOIN ticket_flights ON tickets.ticket_no = ticket_flights.ticket_no 
WHERE ticket_flights.flight_id = 7784
GROUP BY fare_conditions;


-- ** Query 6: Count number of passengers for each travel class (fare_conditions) on flight 7784 (specified)

SELECT flight_id, fare_conditions, COUNT(*) as passenger_count
FROM tickets 
JOIN ticket_flights ON tickets.ticket_no = ticket_flights.ticket_no 
GROUP BY flight_id, fare_conditions LIMIT 15;


-- ** Query 7: Which day of the week has the highest number of flights

SELECT EXTRACT(DOW FROM scheduled_departure) AS day_of_week, COUNT(*) AS number_of_flights
FROM flights
GROUP BY day_of_week
ORDER BY number_of_flights DESC;


-- ** Query 8: Calculate number of seats for each aircraft model

SELECT ad.model->>'en' AS model_en, COUNT(s.seat_no) AS number_of_seats
FROM aircrafts_data ad
JOIN seats s ON ad.aircraft_code = s.aircraft_code
GROUP BY ad.model
ORDER BY number_of_seats DESC;



-- ** Query 9: Find the Average Flight Duration for Each Aircraft Model

SELECT ad.model->>'en' AS model_en, AVG(EXTRACT(EPOCH FROM (f.actual_arrival - f.actual_departure))/3600) AS average_duration_hours
FROM aircrafts_data ad
JOIN flights f ON ad.aircraft_code = f.aircraft_code
GROUP BY ad.model;


-- ** Query 10: Identify Flights with Seat Occupancy percentage

WITH FlightSeats AS (
    SELECT f.flight_id, COUNT(s.seat_no) AS total_seats
    FROM flights f
    JOIN aircrafts_data ad ON f.aircraft_code = ad.aircraft_code
    JOIN seats s ON ad.aircraft_code = s.aircraft_code
    GROUP BY f.flight_id
),
BoardingPassCount AS (
    SELECT flight_id, COUNT(*) AS boarding_passes
    FROM boarding_passes
    GROUP BY flight_id
)
SELECT f.flight_id, bpc.boarding_passes, fs.total_seats, 
       (bpc.boarding_passes::FLOAT / fs.total_seats) * 100 AS occupancy_rate
FROM flights f
JOIN FlightSeats fs ON f.flight_id = fs.flight_id
JOIN BoardingPassCount bpc ON f.flight_id = bpc.flight_id
LIMIT 20;



-- ** Query 11: Find Passenger names who travlled for more than 3 diffrent destinations

SELECT passenger_name, COUNT(DISTINCT arrival_airport) AS destination_count
FROM tickets 
JOIN ticket_flights ON tickets.ticket_no = ticket_flights.ticket_no 
JOIN flights ON ticket_flights.flight_id = flights.flight_id
GROUP BY passenger_name
HAVING COUNT(DISTINCT arrival_airport) > 3
LIMIT 10;



-- ** Query 12: Distrbution on travel class for each denstiantion

SELECT arrival_airport, fare_conditions, COUNT(*) as count
FROM flights 
JOIN ticket_flights ON flights.flight_id = ticket_flights.flight_id
GROUP BY arrival_airport, fare_conditions
ORDER BY arrival_airport, count DESC
LIMIT 10;


-- ** Query 13: Find  day with min number of flights

SELECT EXTRACT(DOW FROM scheduled_departure) AS day_of_week, COUNT(*) AS number_of_flights
FROM flights
GROUP BY EXTRACT(DOW FROM scheduled_departure)
HAVING COUNT(*) = (
    SELECT MIN(number_of_flights)
    FROM (
        SELECT COUNT(*) AS number_of_flights
        FROM flights
        GROUP BY EXTRACT(DOW FROM scheduled_departure)
))
