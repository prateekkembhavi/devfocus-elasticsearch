curl -XDELETE http://localhost:9200/pokedex
curl -XPUT http://localhost:9200/pokedex -H 'Content-Type: application/json' -d @setup.json
curl -s -XPUT http://localhost:9200/_bulk -H 'Content-Type: application/json' --data-binary @pokemon_bulk.json
