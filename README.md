Azure Sandbox - kubegoat setup

1. Login to cloudguru
2. Select Playground
3. Under Cloud Sandboxes, Select Azure and start a sandbox
4. Login to Azure portal and create a virtual machine resource
5. Under the "Create a virtual machine" page:
  - Basics
  - Resource group: <Select dropdown and choose the ###....playground-sandbox>
  - Virtual machine name: <Name the VM>
  - Image: Ubuntu Server 20.04 LTS - Gen2
  - Size: Standard_D2s_v3 - 2 vcpus, 8 GiB
  - Authentication Type: Password
  - Username: <choose a username>
  - Password: <choose a password>

6. Select "Review and Create" at the bottom of the page.
7. After the VM is created, go back to the VM Dashboard display on the Azure Portal
8. Select "Networking" on the left then click "Add inbound port rule" button
  - Destination port ranges: 1230-1236
  - Name: <Name the rule>
  - Select Add
9. Connect to the VM using SSH with the credentials you created
  - Example: ssh azureuser@53.178.38.134
10. Download, chmod, and run script 1
  - `wget https://raw.githubusercontent.com/chadn55/CloudGuru_Azure_Kubegoat/main/kubegoat_setup1.sh && chmod +x ./kubegoat_setup1.sh && ./kubegoat_setup1.sh`
11. Download, chmod, and run script 2
  - `wget https://raw.githubusercontent.com/chadn55/CloudGuru_Azure_Kubegoat/main/kubegoat_setup2.sh && chmod +x ./kubegoat_setup2.sh && ./kubegoat_setup2.sh`
