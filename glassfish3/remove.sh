docker stop glassfish3  && docker rm glassfish3 

#oppure
# docker exec -it glassfish3 bash -c "ps -edaf |grep tail |grep -v grep |awk '{ print $2 }' | xargs kill -9"
