# Transferring the app files onto the VM

# Copying the app folder into the VM
scp -i ~/.ssh/eng74mattawskey.pem -r app/ ubuntu@(IP):~/app

# Copying the environment folder into the VM
scp -i ~/.ssh/eng74mattawskey.pem -r environment/ ubuntu@(IP):~/environment

# Enter the machine
ssh -i ~/.ssh/eng74mattawskey.pem ubuntu@(IP)
