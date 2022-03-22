#! bin/bash

#escaped_proxy=$(printf '%s\n' "&~\"#'{([-|_\\@)]=+}^\$*%!:;.,?/<>" | sed -re "s/([\/&^$.*+?\"(){}])/\\\\\1/g")
#echo -e "$escaped_proxy\n"
sed "s/\&~\"#'{\(\[\-\|_\\@\)\]=\+}\^\$\*%!\:;\.,\?\/<>//g" "/home/jessy/test2.txt"

