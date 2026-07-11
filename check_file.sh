#!/bin/bash
File=$1
if [ -z "$File" ]
then echo "Please provide a file name."
exit 1
fi
if [ -f "$File" ]
then echo "$File exists."

else echo "$File does not exist."
fi
