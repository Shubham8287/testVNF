# Build image

There are two ways to build image :-
* using Openstack builder- you need to provide openstack credentials, packer will build image on openstack and save it in glance.
* using qemu builder- packer will create image locally, then user can upload it to glcance to create VM.

## Instructions to create image
1. Clone the repo
2. cd testVNF/setup
3. If creating image using qemu builder
    - Open config.json and change "ssh_path key" (you can ignore rest of the keys)
    - Run    ``` packer build --var-file=config.json --only=qemu testVNF_image.json ``` (this step will take around 30 min)
    - Upload the image to Glance manually.
    
    Or 
    
   If creating using openstack builder
    - Download openrc.sh file and run ```source openrc.sh```
    - Open config.json and set all variables.
    - Run    ``` packer build --var-file=config.json --only=openstack testVNF_image.json ``` (this step will take around 30 min)
    - You can check uploaded image on Glance.
