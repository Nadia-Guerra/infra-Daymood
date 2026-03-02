CREATE OR REPLACE VIEW weekly_stats AS
SELECT
    r.id_user,
    DATE_TRUNC('week', r.date) AS week_start,
    e.name AS emotion,
    COUNT(*) AS total
FROM records r
JOIN emotions e ON r.id_emotion = e.id
GROUP BY r.id_user, week_start, e.name
ORDER BY week_start DESC;