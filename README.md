# add_keys_to_consul_with_puppet

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with add_keys_to_consul_with_puppet](#setup)
    * [What add_keys_to_consul_with_puppet affects](#what-add_keys_to_consul_with_puppet-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with add_keys_to_consul_with_puppet](#beginning-with-add_keys_to_consul_with_puppet)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

This module puts value to a key called vm_name in consul that runs on localhost of the puppet master.

## Setup

### What add_keys_to_consul_with_puppet affects 

Consul ofcourse!

### Setup Requirements 

This requires consul to be setup in a cluster and running.

### Beginning with add_keys_to_consul_with_puppet

  Pass the vm_name_path parameter to this class as you'd setup the key in consul.
  Edit the params.pp class to enter your master's ip address and your path to the file 

## Usage

You can have as many execs for as many consul keys as you'd like. It's open to customization.

## Reference


## Limitations

Tested in RHEL 6 & 7.

## Development



## Release Notes/Contributors/Etc. 

