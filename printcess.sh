#!/bin/bash

tpPID=$(ps -aux | awk '/ABC/ {print $2}');
checksum=$(echo $tpPID | sha256sum | tr [:lower:] [:upper:] | awk '{print substr($1, 1, 4)}');

## printcess <options> <string>
function printcess {
  text=$(echo "${2}" | sed -E "s|<P|<90[${tpPID}]<0|gm") &&
  text=$(echo "${text}" | sed -E "s|<C|<90[${checksum}]<0|gm") &&
  text=$(echo "${text}" | sed -E 's|<([0-9\;]+?[0-9\;]+)>?|\\e\[\1m|gm') &&
  echo $1 "${text}";
}

## Test:
#printcess -e '<C <35Hello<0, World!';
#printcess -e '<C <95Hello<0, World!';
#printcess -e '<C <45Hello<0, World!';
#printcess -e '<C <105Hello<0, World!';
#printcess -e '<C Live: <35False<0';
#printcess -e '<C Live: <95True<0';
#printcess -e '<C Hello, <2World<0!';
#printcess -ne '<C Hello, ';
#printcess -e '<93World<0';
#echo -e "> $(printcess -e '<C <96Hello<0, <3World!<0')";
