# Chronos

Chronos is time parsing over a REST interface courtesy of the [Chronic](https://github.com/mojombo/chronic) Rubygem. Chronos is currently used to support
a couple of chat bots in natural language parsing.

## Supported Endpoints

### Translations

```
REQUEST

HTTP POST /v1/time/translations

Headers:

Accepts: application/json
Content-Type: application/json

Body:
{"input":"Two days from now"}

RESPONSE:

Headers:

HTTP/1.1 201 Created
Date: Wed, 25 Feb 2015 14:56:58 GMT
Connection: keep-alive
Content-Type: application/json
Content-Length: 70
Server: thin
Via: 1.1 vegur

Body:
{"input":"Two days from now","output":"2015-02-27T14:56:59.444+00:00"}



```