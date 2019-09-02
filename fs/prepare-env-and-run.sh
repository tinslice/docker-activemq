#!/usr/bin/env bash

if [ ! "$(ls -A $ACTIVEMQ_HOME/conf)" ]; then
  cp -r /opt/template/activemq/conf/* ${ACTIVEMQ_HOME}/conf 
fi

if [ ! "$(ls -A $ACTIVEMQ_HOME/data)" ]; then
  cp -r /opt/template/activemq/data/* {ACTIVEMQ_HOME}/data 
fi

${ACTIVEMQ_HOME}/bin/activemq console