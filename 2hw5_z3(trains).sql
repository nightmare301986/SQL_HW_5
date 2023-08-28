CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` 
SQL SECURITY DEFINER VIEW `hw5_z3(trains)` AS 
select `train_cal`.`train_id` AS `train_id`,
`train_cal`.`station` AS `station`,
`train_cal`.`station_time` AS `station_time`,
timediff(lead(`train_cal`.`station_time`) 
OVER (PARTITION BY `train_cal`.`train_id` ORDER BY `train_cal`.`train_id` ) ,`train_cal`.`station_time`) AS `time_to_next_station` from `train_cal`