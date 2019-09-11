#!/bin/bash
realdir(){
  echo $(cd "$(dirname "$0")";pwd)
}
cd $(realdir)
python -m SimpleHTTPServer 8081
