#!/bin/bash
counter=1
#Vote 1 million times (You can change your_count_submit)
while [ $counter -le 1000000 ]
do
echo $counter
tel=`expr 00000000000 + $counter`
first_email="your_name_that_you_want_set$counter" # Example first_email="kdkd$counter"
#echo $first_email
email="${first_email}%40gmail.com"
vapp_count=`expr 00000 + $counter`
vapp="M${vapp_count}B" # You can modify First Letter and last letter M-> Random_letter and B -> Random_letter 
cmnd=`expr 000000000 + $counter` # CMND 9 digits, you can choose CMND 9-12 digits number -> 000000000000 
#if [[ $cmnd -gt 0000000000000 ]]; then
#	echo $cmnd 
#	# Reset CMND
#	cmnd=000000000
#fi
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
