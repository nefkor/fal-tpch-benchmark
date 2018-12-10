# Run Jmeter on VM and more RAM


## Run Jmeter in Azure VM
VM name: vmjmeter
user: aol_falabella
pass: Falabella123
command: ssh aol_falabella@<vm_publicip>

### execute
cd /home/aol_falabella/jmeter/apache-jmeter-4.0/bin
./jmeter -n -t nonuiJDBCAzure.jmx -l results.jtl

JVM_ARGS="-Xms15g -Xmx20g"  && export JVM_ARGS && ./jmeter -n -t nonuiJDBCAzure.jmx -l resultsQ10.jtl


JVM_ARGS="-Xms512m -Xmx512m" jmeter.sh

 nohup ./jmeter -n -t GCP-PR-10TB.jmx -l GCP-PR-10TB.jtl &


 SELECT *   
FROM sys.dm_pdw_exec_requests   
WHERE status = 'Running' AND session_id = 'SID707' order by submit_time desc;  