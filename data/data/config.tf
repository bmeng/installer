terraform {
  required_version = ">= 0.10.7"
}

variable "master_count" {
  type    = "string"
  default = "1"

  description = <<EOF
The number of master nodes to be created.
This applies only to cloud platforms.
EOF
}

variable "base_domain" {
  type = "string"

  description = <<EOF
The base DNS domain of the cluster. It must NOT contain a trailing period. Some
DNS providers will automatically add this if necessary.

Example: `openshift.example.com`.

Note: This field MUST be set manually prior to creating the cluster.
This applies only to cloud platforms.
EOF
}

variable "cluster_name" {
  type = "string"

  description = <<EOF
The name of the cluster.
If used in a cloud-environment, this will be prepended to `base_domain` resulting in the URL to the Tectonic console.

Note: This field MUST be set manually prior to creating the cluster.
EOF
}

variable "ignition_master" {
  type    = "string"
  default = ""

  description = <<EOF
(internal) Ignition config file contents. This is automatically generated by the installer.
EOF
}

variable "ignition_bootstrap" {
  type    = "string"
  default = ""

  description = <<EOF
(internal) Ignition config file contents. This is automatically generated by the installer.
EOF
}

// This variable is generated by tectonic internally. Do not modify
variable "cluster_id" {
  type        = "string"
  description = "(internal) The Tectonic cluster id."
}
