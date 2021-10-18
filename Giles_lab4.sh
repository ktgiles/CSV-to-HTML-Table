#!/bin/bash

echo "<HTML><BODY><TABLE border=1px>"

sed 's/","/"|"/g' $1 > input2.csv

IFS="|"

while

 read FirstName LastName Company Address City County State ZIP Phone Fax Email Web

do

 echo "<TR><TD>$FirstName</TD><TD>$LastName</TD><TD>$Company</TD><TD>$Address</TD><TD>$City</TD><TD>$County</TD><TD>$State</TD><TD>$ZIP</TD><TD>$Phone</TD><TD>$Fax</TD><TD>$Email</TD><TD>$Web</TD></TR>" | sed 's/>"/>/g; s/"</</g'

done < input2.csv

echo "</TABLE></BODY></HTML>"
