## Copyright 2020 Green River IT as described in LICENSE.txt distributed with this project on GitHub.  
## Start at https://github.com/KubeHostNet/  
    
import subprocess
import os

try:
    subprocess.run("terraform init", shell=True, check=True)

    subprocess.run("terraform apply -auto-approve -var-file="+os.environ['TF_VAR_PATH_TO_ACMPEERCONFIG_IAM_KEYS']+"awspublickey.tfvars -var-file="+os.environ['TF_VAR_PATH_TO_ACMPEERCONFIG_IAM_KEYS']+"awsvpcmeta.tfvars", shell=True, check=True)
except Exception as e:
    print("stdout output:\n", e.output)
    sys.exit()
