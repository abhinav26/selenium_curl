session_id=`curl -X POST http://127.0.0.1:4444/wd/hub/session -d '{"desiredCapabilities":{"browserName":"firefox","platform":"MAC"}}'|awk -F'"' '{print $6}'`

curl -X POST http://127.0.0.1:4444/wd/hub/session/$session_id/url -d '{"url":"http://www.google.com"}'
curl -X POST http://127.0.0.1:4444/wd/hub/session/$session_id/element -d '{"using":"id","value":"gbqfq"}'
curl -X POST http://127.0.0.1:4444/wd/hub/session/$session_id/element/0/value -d {"value":["browserstack"]}
curl -X POST http://127.0.0.1:4444/wd/hub/session/$session_id/element -d '{"using":"id","value":"gbqfb"}'
curl -X POST http://127.0.0.1:4444/wd/hub/session/$session_id/element/1/click
sleep 3

curl -X DELETE http://127.0.0.1:4444/wd/hub/session/$session_id/window