#!/bin/bash
docker build -t babyrpc .
docker run -it --network host babyrpc
