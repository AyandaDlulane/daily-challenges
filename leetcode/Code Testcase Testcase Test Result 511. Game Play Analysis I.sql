-- Select the player ID and their earliest event date
SELECT 
    player_id,                 -- The unique ID for each player
    MIN(event_date) AS first_login  -- The earliest date this player appears in the Activity table
FROM 
    Activity                   -- Table containing all player activity logs
GROUP BY 
    player_id;                 -- Group rows by player so MIN() works per player
