variable "project" {
	type 		= string
	description = "Project in which the resource belongs"
}

variable "region" {
	type 		= string
	description	= "Region in which any regional resources in an instance template belongs"
}

variable "zone" {
	type 		= string
	description	= "The zone that the machine should be created in"
}

variable "instance_name" {
	type		= string
	description	= "Name of the Instance"
}

variable "boot_disk_image" {
	type		= string
	description	= "Boot dist image"
}

variable "machine_type" {
	type 		= string
	description	= "Machine type of VM"
	default	 	= "f1-micro"
}

variable "network_interface" {
	type 		= string
	description	= "Networks to attach to instances created from this template."
}

variable "source_image_family" {
	type 		= string
	description	= "Family of the image"
}

variable "source_image_project" {
	type 		= string
	description	= "Project ID of image"
}

variable "compute_disk_zone" {
	type 		= string
	description	= "Zone in which compute disk to be created"
}

variable "instance_group_name" {
	type 		= string
	description	= "Name of the unmanaged Instance group"
}
