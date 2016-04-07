# Anisble + Euca2ools

Docker image for provisiong ec2 instances using ansible and euca2ools.

## run
The example in `provision-example` is not complete, you need to provide your own:
- assume you have an ec2 account and created an key in ec2.
- keys in `KEYS.env`
- subnet and ec2 keyname in `ansible-playbook/create-instances.yml`
- add your ec2 key to `keys/KEY.pem`
- set your aws region in `ec2.ini`

```docker run --env-file provision-ansible/KEYS.env -i -t --rm \
   -v $(pwd)/provision-ansible:/ansible npalm/ansible-ec2-euca2ools ./provisiong.sh```
