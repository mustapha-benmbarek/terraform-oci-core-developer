/*Networking Module | topic*/
module "topics" {
  source            = "./modules/topic"
  core-topics       = local.lst-topics
  core-compartments = var.data-compartments
}

/*Networking Module | Subscription*/
module "subscriptions" {
  source             = "./modules/subscription"
  core-topics        = module.topics.ids
  core-subscriptions = local.lst-subscriptions
  core-compartments  = var.data-compartments
}
