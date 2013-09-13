require 'json'

response = `curl -X POST http://127.0.0.1:4444/wd/hub/session -d '{"desiredCapabilities":{"browserName":"firefox","platform":"MAC"}}'`

response_hash = JSON.parse(response) 
session_id = response_hash["sessionId"]
system("sh curl_requests.sh #{session_id}")
sleep(3)

`curl -X DELETE http://127.0.0.1:4444/wd/hub/session/#{session_id}/window`

 