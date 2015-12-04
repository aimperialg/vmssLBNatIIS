# vmssLBNatIIS
Virtual Machine Scale Set - 80, 443 load balanced, dynamic natting, autoscale

This template will deploy virtual machine scale sets based on the instance count specified. It will put the vm's behind a load balancer, with port 80 and 443 defined (Not using 443, but wanted to give an example of multiple load balancing ports). There is a natpool setup, so start at port 50000 for vm0 and increment. Feel free to change the port in the json file. The VM's autoscale based on cpu usage over a period of time. Please see the autoscale section in the json file to change these settings. There is also a custom extension deploying a powershell script to setup iis and drop in an asp.net webpage to generate cpu load over a specific period of time you set. Can watch the audit logs in the azure portal to see the vm's scale out. 

Deploy-AzureResourceGroup.ps1 -> modified for the new azure powershell 1.0. It will prompt you for creds during deploy as I ran into an issue about not being logged in.

If you are using v.99 and below, please rename Deploy-AzureResourceGroupOld.ps1 to Deploy-AzureResourceGroup.ps1

Thanks, Jimmy
