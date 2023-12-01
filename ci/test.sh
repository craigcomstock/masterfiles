cf-agent -KIf update.cf
cf-agent -KI
 cf-promises --show-vars=def.acl_derived
 cf-promises --show-vars=def.control_server_allowconnects_derived
 cf-promises --show-vars=def.control_server_allowallconnects_derived
cf-serverd -Fv | sed -n '/.*BEGIN summary of access promises.*/,${p;/.*END summary of access promises.*/q}'
