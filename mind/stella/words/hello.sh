#!/bin/bash

# OpenAssistant 0.04
# 2016 General Public License V3
# By Andrew Vavrek, Clayton G. Hobbs, Jezra, Jonathan Kulp

# Shuffle Script By Jonathan Kulp . http://jonathankulp.org

# hello.sh

greeting=$MINDDIR/words/greeting
name=$MINDDIR/words/name
question=$MINDDIR/words/question

shuf -n1 > $greeting <<EOFgreeting
greetings
hello
hello again
hello there
hey
hey there
hi there
EOFgreeting

shuf -n1 > $name <<EOFname
$USERNAME...
EOFname

shuf -n1 > $question <<EOFquestion
how are you?
how's it going?
how are things?
how are you feeling?
EOFquestion

response=$(echo "$(cat $greeting) $(cat $name) $(cat $question)")

echo $response | $VOICE
