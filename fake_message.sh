#!/bin/bash                                                                                                                                                                                     
#CURL='/usr/bin/curl'

MESSAGE=$(cat)

curl -X POST -H 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiI4MzUyM2I4ZmM1MjQ0ODE3ODRkNTEwYjgxYWIzN2VhYSIsImlhdCI6MTU1MjkxMzI1NiwiZXhwIjoxODY4MjczMjU2fQ.oULD2EWLhcfNOUNLN697rmPnzFLKoc412AIJpH8lOgc' -H 'Content-Type: application/json' -d "{\"entity_id\": \"input_text.message_module\", \"value\": \"$MESSAGE\"}" http://192.168.1.2:8123/api/services/input_text/set_value
