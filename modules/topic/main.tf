/*Resource creation: Topic*/
resource "oci_ons_notification_topic" "this" {
  for_each       = var.core-topics
  compartment_id = var.core-compartments[each.value.comp-name]
  name           = each.value.tpc-name
  description    = each.value.tpc-description
}
