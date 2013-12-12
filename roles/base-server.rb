# roles/base-server.rb

name "base-server"
description "Base role for Debian servers"

run_list "recipe[apt]","recipe[base-server-packages]","recipe[chef-client::cron]"