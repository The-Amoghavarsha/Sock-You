#!/usr/bin/sh
echo "$(figlet Sock You)"
curl -s https://randomuser.me/api/ | jq | 
grep -E -w 'gender|first|last|city|state|country|postcode|phone|cell|email|date|age|large' | sed -e 's/gender/  Gender/g' -e 's/first/First Name/; s/"//g' -e 's/last/Last Name/g' -e 's/large/Photo/g' -e 's/date/Date Of Birth/g' -e 's/cell/  Mobile/g' -e 's/age/Age/g' -e 's/city/City/g' -e 's/state/State/g' -e 's/country/Country/g' -e 's/postcode/Postal Code/g' -e 's/phone/  Phone/g' -e 's/email/  Email/g' | sort -t: -u -k1,1
