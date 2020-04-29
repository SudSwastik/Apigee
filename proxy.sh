# proxy=$(curl -i -w "%{http_code}" -X GET --header "Authorization: Basic c3VkYXJzaGFuNDMwOUBnbWFpbC5jb206U3VkdTQzMDlA" "https://api.enterprise.apigee.com/v1/organizations/sudarshan4309-eval/apis")
# echo ${proxy}

proxy_create=$(curl -i -w "%{http_code}" -X POST --header "Content-Type: application/json" --header "Authorization: Basic c3VkYXJzaGFuNDMwOUBnbWFpbC5jb206U3VkdTQzMDlA" -d "{\"name\": \"sud\" }" "https://api.enterprise.apigee.com/v1/organizations/sudarshan4309-eval/apis")
echo ${proxy_create}
# a=( $(echo ${proxy} | tr -d '"[],') )
# b=xyz
# # for i in "${a[@]}"; 
# # do echo $i; 
# # done

# for i in "${a[@]}"; 
# do
# if [ $i == $b ]; then 
# echo "match $i"; 
# fi; 
# done