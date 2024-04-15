array=(
    http://baidu.com
    http://qq.com
    http://taobao.com
)

curl_ip() {
    CURL=$(curl -o /dev/null -s --connect-timeout 5 -w '%{http_code}' $1 | egrep "200|302" | wc -l)
    return $CURL
}

main() {
    for n in ${array[*]}; do
        curl_ip $n
        if [ $? -eq 0 ]; then
            action "curl $n" /bin/true
        else
            action "curl $n" /bin/false
            sleep 30
            curl_ip $n
            if [ $? -eq 0 ]; then
                action "Retry curl $n again" /bin/true
            else
                action "Retry curl $n again" /bin/false
            fi
        fi
    done
}
main
