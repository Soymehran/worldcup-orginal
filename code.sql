
-- Section1 

SELECT players.family_name, players.given_name AS name
FROM players
WHERE family_name LIKE '%PIR%'
OR given_name LIKE '%PIR%'
ORDER BY family_name ASC;

-- Section2

SELECT shirt_number, count_shirt_number
FROM (
    SELECT player_appearances.shirt_number,
           COUNT(shirt_number) AS count_shirt_number
    FROM player_appearances
    GROUP BY player_appearances.shirt_number
) AS shirt_counts
WHERE count_shirt_number > 1000
ORDER BY count_shirt_number DESC;

-- Section3

SELECT DISTINCT players.family_name, players.given_name name
FROM players
JOIN award_winners aw ON players.player_id = aw.player_id
JOIN awards a ON aw.award_id = a.award_id
WHERE award_name = 'Best Young Player'
  AND players.player_id IN (
      SELECT aw.player_id
      FROM award_winners aw
      JOIN awards a ON aw.award_id = a.award_id
      WHERE award_name IN ('Golden Ball', 'Silver Ball', 'Bronze Ball', 'Golden Boot',
                           'Silver Boot', 'Bronze Boot', 'Golden Glove')
  )
ORDER BY players.family_name ;
