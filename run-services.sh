touch /home/jmeter/apache-jmeter-2.13/bin/jmeter-server.log

cd /home/jmeter/apache-jmeter-2.13/bin ; ./jmeter-server

tail -f /home/jmeter/apache-jmeter-2.13/bin/jmeter-server.log &

wait
