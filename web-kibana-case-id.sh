#!/bin/bash

# @raycast.title Kibana find case ID
# @raycast.author Michael Lajlev
# @raycast.authorURL https://github.com/lajlev
# @raycast.description Find case ID based on User  in Kibana (require VPN)

# @raycast.argument1 { "type": "text", "placeholder": "Session id", "percentEncoded": true }

# @raycast.icon 📊
# @raycast.mode silent
# @raycast.packageName Systems
# @raycast.schemaVersion 1

open "https://euikibana01.sos.eu/s/eux/app/discover#/view/ce161940-c2c6-11eb-931b-85cd0c7cc9b0?_g=(filters:!(),refreshInterval:(pause:!t,value:0),time:(from:now-30d,to:now))&_a=(columns:!(app.header.userid,message,app.log_type),filters:!(('':(store:appState),'$state':(store:appState),meta:(alias:!n,disabled:!f,index:'70811080-823b-11eb-9691-83fef81c5cf3',key:kubernetes.namespace_name,negate:!f,params:(query:roadrunner-prd),type:phrase),query:(match_phrase:(kubernetes.namespace_name:roadrunner-prd))),('':(store:appState),'$state':(store:appState),meta:(alias:!n,disabled:!f,index:'70811080-823b-11eb-9691-83fef81c5cf3',key:kubernetes.container_name,negate:!f,params:(query:roadrunner-gateway),type:phrase),query:(match_phrase:(kubernetes.container_name:roadrunner-gateway))),('':(store:appState),'$state':(store:appState),meta:(alias:!n,disabled:!f,index:'70811080-823b-11eb-9691-83fef81c5cf3',key:app.header.userid,negate:!f,params:(query:daa839c2),type:phrase),query:(match_phrase:(app.header.userid:$1))),('':(store:appState),'$state':(store:appState),meta:(alias:!n,disabled:!f,index:'70811080-823b-11eb-9691-83fef81c5cf3',key:app.requestUri,negate:!f,params:(query:%2Fapi%2Fv1%2Fassistance%2Forder),type:phrase),query:(match_phrase:(app.requestUri:%2Fapi%2Fv1%2Fassistance%2Forder))),('$state':(store:appState),meta:(alias:!n,disabled:!f,index:'70811080-823b-11eb-9691-83fef81c5cf3',key:app.log_type,negate:!f,params:(query:response),type:phrase),query:(match_phrase:(app.log_type:response)))),index:'70811080-823b-11eb-9691-83fef81c5cf3',interval:auto,query:(language:kuery,query:''),sort:!(!('@timestamp',asc)))"