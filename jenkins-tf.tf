provider "vsphere" {
    user    =   "kongsamuel.adm@citlab.sea.local"
    password = "Garena.com"
    vsphere_server =    "vcenter.citlab.sea.local"
    allow_unverified_ssl    =   true
}

data "vsphere_datacenter" "dc" {
  name = "CITLAB"
}

data "vsphere_datastore" "datastore" {
  name          = "vsanDatastore"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_datastore" "iso" {
  name          = "vsanDatastore"
  datacenter_id = data.vsphere_datacenter.dc.id
}

#resource "vsphere_content_library" "library" {
  #name            = "CITLAB-ConLib"
  #storage_backing = data.vsphere_datastore.datastore.id
 # description     = "A new source of content"
#}

#resource "vsphere_content_library_item" "ubuntu2004" {
 # name        = "Ubuntu 20.04"
  #library_id  = vsphere_content_library.library.id
  #description     = "A new source of content"
#}

data "vsphere_compute_cluster" "cluster" {
    name = "CITLAB-Cluster"
    datacenter_id = data.vsphere_datacenter.dc.id
}
data "vsphere_resource_pool" "pool" {
  name          = "Sam-VM"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "network" {
   name          = "VLAN102-Ops_IT"
   datacenter_id = data.vsphere_datacenter.dc.id
}


#Provisioning a new VM 
resource "vsphere_virtual_machine" "vm" {
  name             = "terraform-test-Ubuntu2004"
  #resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore.id

  num_cpus = 2
  memory   = 4096
  guest_id = "ubuntu64Guest"
  scsi_type = "lsilogic-sas"
  

  network_interface {
    network_id = data.vsphere_network.network.id
  }


  disk {
    label = "terraform-test-Ubuntu2004.vmdk"
    size  = 50
    thin_provisioned = true
  }
  cdrom {
      datastore_id = data.vsphere_datastore.iso.id
      path         = "iso/ubuntu-20.04.2-live-server-amd64.iso"
  }

}

resource "vsphere_virtual_machine" "vm1" {
  name             = "terraform1-test-Ubuntu2004"
  #resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore.id

  num_cpus = 2
  memory   = 4096
  guest_id = "ubuntu64Guest"
  scsi_type = "lsilogic-sas"
  

  network_interface {
    network_id = data.vsphere_network.network.id
  }


  disk {
    label = "terraform1-test-Ubuntu2004.vmdk"
    size  = 50
    thin_provisioned = true
  }
  cdrom {
      datastore_id = data.vsphere_datastore.iso.id
      path         = "iso/ubuntu-20.04.2-live-server-amd64.iso"
  }

}
resource "vsphere_virtual_machine" "vm2" {
  name             = "terraform2-test-Ubuntu2004"
  #resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore.id

  num_cpus = 2
  memory   = 4096
  guest_id = "ubuntu64Guest"
  scsi_type = "lsilogic-sas"
  

  network_interface {
    network_id = data.vsphere_network.network.id
  }


  disk {
    label = "terraform2-test-Ubuntu2004.vmdk"
    size  = 50
    thin_provisioned = true
  }
  cdrom {
      datastore_id = data.vsphere_datastore.iso.id
      path         = "iso/ubuntu-20.04.2-live-server-amd64.iso"
  }

}
resource "vsphere_virtual_machine" "vm3" {
  name             = "terraform3-test-Ubuntu2004"
  #resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore.id

  num_cpus = 2
  memory   = 4096
  guest_id = "ubuntu64Guest"
  scsi_type = "lsilogic-sas"
  

  network_interface {
    network_id = data.vsphere_network.network.id
  }


  disk {
    label = "terraform3-test-Ubuntu2004.vmdk"
    size  = 50
    thin_provisioned = true
  }
  cdrom {
      datastore_id = data.vsphere_datastore.iso.id
      path         = "iso/ubuntu-20.04.2-live-server-amd64.iso"
  }

}
resource "vsphere_virtual_machine" "vm4" {
  name             = "terraform4-test-Ubuntu2004"
  #resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore.id

  num_cpus = 2
  memory   = 4096
  guest_id = "ubuntu64Guest"
  scsi_type = "lsilogic-sas"
  

  network_interface {
    network_id = data.vsphere_network.network.id
  }


  disk {
    label = "terraform4-test-Ubuntu2004.vmdk"
    size  = 50
    thin_provisioned = true
  }
  cdrom {
      datastore_id = data.vsphere_datastore.iso.id
      path         = "iso/ubuntu-20.04.2-live-server-amd64.iso"
  }

}
resource "vsphere_virtual_machine" "vm5" {
  name             = "terraform5-test-Ubuntu2004"
  #resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore.id

  num_cpus = 2
  memory   = 4096
  guest_id = "ubuntu64Guest"
  scsi_type = "lsilogic-sas"
  

  network_interface {
    network_id = data.vsphere_network.network.id
  }


  disk {
    label = "terraform5-test-Ubuntu2004.vmdk"
    size  = 50
    thin_provisioned = true
  }
  cdrom {
      datastore_id = data.vsphere_datastore.iso.id
      path         = "iso/ubuntu-20.04.2-live-server-amd64.iso"
  }

}