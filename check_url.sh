#!/bin/bash
function network() 
{  
   echo $1 
   local timeout=1
   local target="$1"
   local ret_code=`curl -I -s --connect-timeout ${timeout} ${target} -w %{http_code} | tail -n1`
   if [ "x$ret_code" = "x200" ];then
	   # 网络畅通
	   return 1
   else
          # 网络不畅通
           return 0
   fi
   
   return 0   
}

network "$1"
if [ $? -eq 0 ];then
	echo "网络fail"
	exit -1
fi

echo "网络Success"

exit 0
