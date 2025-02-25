#!/bin/bash

#jq -r 'select(.symbol == "TSLA" and .side == "sell") | .order_id' ./transaction-log.txt | tee ./output.txt | xargs -I {} curl -s "https://example.com/api/{}" >> ./log.txt

jq -r 'select(.symbol == "TSLA" and .side == "sell") | .order_id' ./transaction-log.txt | tee ./output.txt |  xargs -I {} curl -s "https://httpbin.org/get?order_id={}" >> ./log.txt

#jq -r 'select(.symbol == "TSLA" and .side == "sell") | .order_id' ./transaction-log.txt | tee ./output.txt | xargs -I {} echo "https://example.com/api/{}" >> ./log.txt

echo "Filtered TSLA sell transactions saved to output.txt"
