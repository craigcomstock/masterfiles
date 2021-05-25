rm -rf /var/cfengine/masterfiles
rm -rf /var/cfengine/modules
rm -rf /var/cfengine/inputs
rm -rf /var/cfengine/state
make install
cf-key
cf-agent --skip-bootstrap-policy-run -IB localhost | tee log
echo "### ERRORS ###"
grep error: log
echo "### apt_get module in place? ###"
stat /var/cfengine/modules/packages/apt_get
#cf-agent -KIf ./cfe_internal/update/update_policy.cf -b render_package_modules
