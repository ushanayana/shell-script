#!/bin/bash 


COURSE="Devops from current script"
echo "Before calling current script:$COURSE"
echo "Process ID of current script:$$"

#./16-other-script.sh

source ./16-other-script.sh

echo "after calling current script:$COURSE"
