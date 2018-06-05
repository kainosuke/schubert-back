json.extract! repertoire, *(Repertoire.attribute_names - ['tune_id', 'created_at', 'updated_at'])
json.tune do
  json.partial! "api/tunes/tune", tune: repertoire.tune
end