#!/bin/bash
counter=1
while [ $counter -le 1000000 ]
do
echo $counter
tel=`expr 00000000000 + $counter`
first_email="stephenvu$counter"
#echo $first_email
email="${first_email}%40gmail.com"
vapp=$counter
cmnd=$counter
data="vote_data=fullname=Stephen+V&tel=${tel}&email=${email}&vapp=${vapp}&cmnd=${cmnd}&vs1=02&vs2=07&vs3=11&vs4=15&vs5=19&vs6=23&vs7=27"
curl -X POST \
  https://voting.saostar.vn/vline/save_vote \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/x-www-form-urlencoded' \
  -H 'postman-token: f89601c5-5e63-d26c-0798-c3cdb726a226' \
  -F $data
((counter++))
done
echo All done
