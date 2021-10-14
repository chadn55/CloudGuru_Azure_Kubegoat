Azure Sandbox - kubegoat setup

Login to cloudguru
Select Playground
Under Cloud Sandboxes, Select Azure and start a sandbox
Login to Azure portal and create a virtual machine resource

Under the "Create a virtual machine" page
	-Basics
		Resource group: <Select dropdown and choose the ###....playground-sandbox>
		Virtual machine name: <Name the VM>
		Image: Ubuntu Server 20.04 LTS - Gen2
		Size: Standard_D2s_v3 - 2 vcpus, 8 GiB
		Authentication Type: Password
 		Username: <choose a username>
		Password: <choose a password>

Select "Review and Create" at the bottom of the page.


After the VM is created, go back to the VM Dashboard display on the Azure Portal
Select "Networking" on the left then click "Add inbound port rule" button
	Destination port ranges: 1230-1236
	Name: <Name the rule>
 	Select Add

Connect to the VM using SSH with the credentials you created
	Example: ssh azureuser@53.178.38.134

##########################################################################
#    SCRIPT INSTRUCTIONS 
#   1. Run Script 1
#   2. Log out
#   3. SSH to VM again
#   4. Run Script 2
