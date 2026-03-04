## Core Unix Comands

Unix commands are executable through terminals which are nearly universal for communicating with 
any machine.

pwd: print working directory
ls: list files 
cd: change working directory
mkdir: makes a directory
rm: remove files 
cp: copy files and move them
mv: moves files 
nano: very simple text editor (always available)
export: store files as a temporary variable (only for the instance)
curl: download files from web or ftp
wget: download files form web
tar -zxvf: untar and unzip archive files 
gunzip: unzip 
chmod: changes the permissions of a file. ex(chmod +x file makes it executable)

## AWS EC2 Instance

Connecting to my instance with the command
ssh -i "C:\Users\eswan\OneDrive\Desktop\College Work\BIMM 143\BIMM143_max.pem" ubuntu@ec2-34-222-129-98.us-west-2.compute.amazonaws.com

Scure copy file between machines, going from vm to personal comupter

ssh -i "C:\Users\eswan\OneDrive\Desktop\College Work\BIMM 143\BIMM143_max.pem" ubuntu@ec2-34-222-129-98.us-west-2.compute.amazonaws.com:/home/ubuntu/work/bimm143_github/Lab16/results.txt . 

## Class 17 instance (IP adress changes)

ssh -i "BIMM143_max.pem" ubuntu@ec2-35-94-149-143.us-west-2.compute.amazonaws.com

instead set variables with important info

export KEY=BIMM143_max.pem
export SERVER=ubuntu@ec2-35-94-149-143.us-west-2.compute.amazonaws.com

echo $KEY ($represents acessing the variable)
echo $SERVER
# 
now can use it for other commands

scp -i -r $KEY $SERVER:file_name . 

PATH environment variable:
variable that stores th file locations for default commands in the terminal. ex. pwd is stored in 
/usr/bin and within PATH holds the file directories. 

to add to the PATH variable, appends to PATH so new directories are added to default paths:

export PATH:$PATH:new_dir_adress

## Writing a shell script 

writing something to run kallisto quant -i hg19.ensembl -o SRR2156851_quant SRR2156851_1.fastq SRR2156851_2.fastq again
