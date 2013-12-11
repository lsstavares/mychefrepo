# roles/base-server.rb

name "base-server"
description "Base role for Debian servers"
run_list "recipe[apt]","recipe[chef-client::cron]"