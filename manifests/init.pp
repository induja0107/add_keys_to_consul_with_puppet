# Class: add_keys_to_consul_with_puppet
# ===========================
#
# This class puts value to a key called vm_name in consul that runs on localhost of the puppet master.
# That key helps Jenkins query the status of the VM
#
# Parameters
# ----------
#
# vm_name_path which is the path to the key in consul which holds vm_name
#
# Variables
# ----------
#
# deploy_path from facter custom facts.
# hostname from facts
# master from profile tomcat params class which indicates which puppet master is used
# cdadmin path from profile tomcat params class which gives the path for creating files
# Authors
# -------
#
# Author Name <induja.vijayaragavan>
#
# Copyright
# ---------
#
# Copyright 2016 Induja Vijayaragavan, unless otherwise noted.
#
class add_keys_to_consul_with_puppet(String $vm_name_path='vm_name') {

  #path_to_key = join(['application/',$facts['deploy_path']])
  #$vm_name_path = join([$path_to_key,'/vm_name'])

  exec { 'curl_put_vm_name':
    command => "curl -X PUT -d ${::hostname} http://${params::master}:8500/v1/kv/${vm_name_path} && touch ${params::cdadmin_path}/myfile",
    creates => "${params::cdadmin_path}/myfile",
    path    => '/usr/bin/:/bin/:/usr/local/bin/',
  } 
}
