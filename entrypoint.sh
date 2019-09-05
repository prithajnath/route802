#!/usr/bin/env bash

intf=$(ip route get 1.1.1.1 | awk '{print $5}')

cargo run $intf