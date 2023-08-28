CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `hw5_z2(analysis)` AS
    SELECT 
        `analysis`.`an_name` AS `an_name`,
        `analysis`.`an_price` AS `an_price`,
        `orders`.`ord_datetime` AS `ord_datetime`
    FROM
        (`analysis`
        JOIN `orders` ON (((`analysis`.`an_id` = `orders`.`ord_an`)
            AND (`orders`.`ord_datetime` >= '2020-02-05 00:00:00')
            AND (`orders`.`ord_datetime` <= '2020-02-12 00:00:00'))))