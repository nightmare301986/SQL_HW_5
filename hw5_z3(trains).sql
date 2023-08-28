SELECT * FROM hw5_train.train_cal;

SELECT train_id, station, station_time,
TIMEDIFF(LEAD(station_time) OVER(PARTITION BY train_id ORDER BY train_id), station_time)
AS time_to_next_station
FROM hw5_train.train_cal;