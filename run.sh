#!/bin/bash
counter=1
#Vote 1 million times
while [ $counter -le 1000000 ]
do
echo $counter
tel=`expr 40000000000 + $counter`
#echo $tel
first_email="azzsfdfdtephenvu$counter"
#echo $first_email
email="${first_email}%40gmail.com"
vapp_count=`printf "%05d\n" $counter`
vapp="O${vapp_count}Q"
#echo $vapp
cmnd=`expr 400000000 + $counter`
echo $cmnd
#if [[ $cmnd -gt 0000000000000 ]]; then
#	echo $cmnd 
#	# Reset CMND
#	cmnd=000000000
#fi
data="vote_data=fullname=Stephen+V&tel=${tel}&email=${email}&vapp=${vapp}&cmnd=${cmnd}&vs1=01&vs2=05&vs3=12&vs4=14&vs5=17&vs6=24&vs7=27"
curl -X POST \
  https://voting.saostar.vn/vline/save_vote \
  -H 'cache-control: no-cache' \
  -H 'content-type: application/x-www-form-urlencoded' \
  -H 'postman-token: f89601c5-5e63-d26c-0798-c3cdb726a226' \
  -F $data
((counter++))
done
echo All done
