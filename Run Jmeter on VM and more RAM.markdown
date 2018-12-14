# Run Jmeter on VM and more RAM

## Access to Azure VM with Jmeter already there
VM name: vmjmeter
user: aol_falabella
pass: Falabella123
command: ssh aol_falabella@<vm_publicip>

### Execute Jmeter nongui in VM
cd /home/aol_falabella/jmeter/apache-jmeter-4.0/bin

JVM_ARGS="-Xms15g -Xmx20g"  && export JVM_ARGS &&
nohup ./jmeter -n -t Azure-PR-100GB.jmx -l Azure-3000-PR-100GB.jtl & 

### Executing in local computer
JVM_ARGS="-Xms512m -Xmx512m" jmeter.sh
nohup ./jmeter -n -t /home/alolivares/genDataLoadBQ/GCP/TestPlans/GCP-CR-50threads-10TB-90r-10a.jmx -l GCP-CR-50threads-10TB-90r-10a.jtl &
