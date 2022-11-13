SELECT SUM(listeners_lastfm) as total_listeners, country
FROM artists
LATERAL VIEW explode( split(country_lastfm, '; ')) subView as country
GROUP BY country
HAVING country!=''
ORDER BY total_listeners DESC
LIMIT 100
;