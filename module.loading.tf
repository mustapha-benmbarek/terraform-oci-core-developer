/*Data loading...*/
locals {
  json-topics        = try(jsondecode(file(var.json-topics)), [])
  json-subscriptions = try(jsondecode(file(var.json-subscriptions)), [])
}

/*Data decoding...*/
locals {
  lst-topics        = try({ for obj in local.json-topics.data : obj.tpc-name => obj }, tomap({}))
  lst-subscriptions = try({ for obj in local.json-subscriptions.data : obj.sub-name => obj }, tomap({}))
}
