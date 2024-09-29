variable "core-compartments" {}
variable "core-topics" {
  type = map(object({
    region-id       = optional(string)
    region-name     = optional(string)
    comp-id         = optional(string)
    comp-name       = string
    tpc-id          = optional(string)
    tpc-name        = string
    tpc-description = optional(string)
  }))
}
