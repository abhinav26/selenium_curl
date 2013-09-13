

curl -X POST http://127.0.0.1:4444/wd/hub/session/$1/url -d '{"url":"http://www.google.com"}'
curl -X POST http://127.0.0.1:4444/wd/hub/session/$1/element -d '{"using":"id","value":"gbqfq"}'
curl -X POST http://127.0.0.1:4444/wd/hub/session/$1/element/0/value -d {"value":["browserstack"]}
curl -X POST http://127.0.0.1:4444/wd/hub/session/$1/element -d '{"using":"id","value":"gbqfb"}'
curl -X POST http://127.0.0.1:4444/wd/hub/session/$1/element/1/click