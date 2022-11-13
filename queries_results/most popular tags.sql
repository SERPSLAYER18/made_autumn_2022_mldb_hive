
SELECT SUM(scrobbles_lastfm) as popularity, tag
FROM artists
LATERAL VIEW explode( split(tags_lastfm, '; ')) subView as tag
GROUP BY tag
ORDER BY popularity DESC
LIMIT 10
;