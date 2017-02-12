#!/bin/bash

if [ ! -d env ]; then
	virtualenv env
fi

source env/bin/activate
pip install pytest
py.test --junit-xml=report.xml test.py
