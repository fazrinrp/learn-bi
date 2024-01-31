SELECT
  date_created,
  IFNULL(SAFE_CAST(contacts_n AS INT64), 0) as day_0,
  IFNULL(SAFE_CAST(contacts_n_1 AS INT64), 0) as day_1,
  IFNULL(SAFE_CAST(contacts_n_2 AS INT64), 0) as day_2,
  IFNULL(SAFE_CAST(contacts_n_3 AS INT64), 0) as day_3,
  IFNULL(SAFE_CAST(contacts_n_4 AS INT64), 0) as day_4,
  IFNULL(SAFE_CAST(contacts_n_5 AS INT64), 0) as day_5,
  IFNULL(SAFE_CAST(contacts_n_6 AS INT64), 0) as day_6,
  IFNULL(SAFE_CAST(contacts_n_7 AS INT64), 0) as day_7,
  CASE WHEN new_type = 'type_1' THEN 'account management'
        WHEN new_type = 'type_2' THEN 'technician troubleshooting'
        WHEN new_type = 'type_3' THEN 'scheduling'
        WHEN new_type = 'type_4' THEN 'construction'
        ELSE 'internet and wifi' END AS problem_type,
  CASE WHEN new_market = 'market_1' THEN 'city 1'
        WHEN new_market = 'market_2' THEN 'city 2'
        ELSE 'city 3' END AS city
FROM `ethereal-apex-410916.google_fiber.market_1`
UNION ALL
SELECT
  date_created,
  IFNULL(SAFE_CAST(contacts_n AS INT64), 0) as day_0,
  IFNULL(SAFE_CAST(contacts_n_1 AS INT64), 0) as day_1,
  IFNULL(SAFE_CAST(contacts_n_2 AS INT64), 0) as day_2,
  IFNULL(SAFE_CAST(contacts_n_3 AS INT64), 0) as day_3,
  IFNULL(SAFE_CAST(contacts_n_4 AS INT64), 0) as day_4,
  IFNULL(SAFE_CAST(contacts_n_5 AS INT64), 0) as day_5,
  IFNULL(SAFE_CAST(contacts_n_6 AS INT64), 0) as day_6,
  IFNULL(SAFE_CAST(contacts_n_7 AS INT64), 0) as day_7,
  CASE WHEN new_type = 'type_1' THEN 'account management'
        WHEN new_type = 'type_2' THEN 'technician troubleshooting'
        WHEN new_type = 'type_3' THEN 'scheduling'
        WHEN new_type = 'type_4' THEN 'construction'
        ELSE 'internet and wifi' END AS problem_type,
  CASE WHEN new_market = 'market_1' THEN 'city 1'
        WHEN new_market = 'market_2' THEN 'city 2'
        ELSE 'city 3' END AS city
FROM `ethereal-apex-410916.google_fiber.market_2`
UNION ALL
SELECT
  date_created,
  IFNULL(SAFE_CAST(contacts_n AS INT64), 0) as day_0,
  IFNULL(SAFE_CAST(contacts_n_1 AS INT64), 0) as day_1,
  IFNULL(SAFE_CAST(contacts_n_2 AS INT64), 0) as day_2,
  IFNULL(SAFE_CAST(contacts_n_3 AS INT64), 0) as day_3,
  IFNULL(SAFE_CAST(contacts_n_4 AS INT64), 0) as day_4,
  IFNULL(SAFE_CAST(contacts_n_5 AS INT64), 0) as day_5,
  IFNULL(SAFE_CAST(contacts_n_6 AS INT64), 0) as day_6,
  IFNULL(SAFE_CAST(contacts_n_7 AS INT64), 0) as day_7,
  CASE WHEN new_type = 'type_1' THEN 'account management'
        WHEN new_type = 'type_2' THEN 'technician troubleshooting'
        WHEN new_type = 'type_3' THEN 'scheduling'
        WHEN new_type = 'type_4' THEN 'construction'
        ELSE 'internet and wifi' END AS problem_type,
  CASE WHEN new_market = 'market_1' THEN 'city 1'
        WHEN new_market = 'market_2' THEN 'city 2'
        ELSE 'city 3' END AS city
FROM `ethereal-apex-410916.google_fiber.market_3`
