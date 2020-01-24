-- initial details of the app store data from play store
SELECT COUNT (*)
FROM app_store_apps;
SELECT *
FROM app_store_apps;
-- distinct fields in play_store_apps table
SELECT COUNT (DISTINCT name) AS app_name
FROM app_store_apps;