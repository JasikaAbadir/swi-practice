variable "environment_name" {
  type    = string
  default = ""
}

variable "azure_region" {
  type    = string
  default = ""
}

variable "estate_name" {
  type    = string
  default = ""
}

variable "subscription_id" {
  type    = string
  default = ""
}

variable "subscription_name" {
  type    = string
  default = ""
}

variable "resource_group_name" {
  type    = string
  default = ""
}

variable "tags" {
  type        = map(any)
  description = "Map (or convertible object) of tags to apply to Azure-level resources"
}


//variable "subnetsomething" {
  //  description = "some subnet goes here i guess"
    
//}

# variable "subnet_id" {
#   description = "List of subnets id where Swicus resoruces will be run."
#   type        = string
# }

###################
# CosmoDB variables
###################

variable "cosmosdb_name" {
  description = "The name of the Azure CosmoDB"
}

variable "capability" {
  description = "The capabilities which should be enabled for this Cosmos DB account.Changing this forces a new resource to be created."
}

variable "kind" {
  description = "Specifies the Kind of CosmosDB to create - possible values are GlobalDocumentDB and MongoDB. Defaults to GlobalDocumentDB. Changing this forces a new resource to be created."
}

variable "offer_type" {
  description = "Specifies the Offer Type to use for this CosmosDB Account - currently this can only be set to Standard."
}

variable "backup" {
  type        = map(string)
  description = "Backup block with type (Continuous / Periodic), interval_in_minutes and retention_in_hours keys"
  default = {
    type                = "Periodic"
    interval_in_minutes = 720
    retention_in_hours  = 96
  }
}

#what I've created

###################
# storage account variables
###################

variable "storage_account_name" {
  type        = string
  description = "name of the storage account"
}

variable "account_tier" {
  type = string
  description = "account tier which is standard"
}

###################
# Key vault variables
###################


variable "key_name" {
  type        = string
  description = "name of the key"
}

###################
# VM variables
###################


variable "vm_name" {
  type        = string
  description = "name of the vm"
}
