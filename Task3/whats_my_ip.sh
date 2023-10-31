#!/bin/bash
ifconfig | grep "192"  | cut -c 14-28
