# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "ltavares"
client_key               "#{current_dir}/ltavares.pem"
validation_client_name   "onipresente-validator"
validation_key           "#{current_dir}/onipresente-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/onipresente"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]

# Amazon AWS
knife[:aws_access_key_id] 		= "AKIAIX5A3WR6XDJ3SNOA"
knife[:aws_secret_access_key] 	= "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"
knife[:aws_ssh_key_id] 			= "myfreepair"

# SOME AWS DEFAULTS
knife[:region]					= "sa-east-1"
knife[:availability_zone]		= "sa-east-1a"
knife[:ssh_user]				= "ubutnu"
knife[:flavor]					= "t1.micro"

# AWS DEBIAN
knife[:image]					= "ami-b03590ad"
#knife[:image]					= "ami-35258228"  # Ubuntu
knife[:use_sudo]				= "true"