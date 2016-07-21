SELECT MAX(end_time) AS call_time, page, COUNT(*) count 
FROM [[Dataset].api_log]
WHERE app_id = [App ID]
  AND response_data NOT LIKE '%error%'
GROUP BY page
ORDER BY count DESC
LIMIT 100