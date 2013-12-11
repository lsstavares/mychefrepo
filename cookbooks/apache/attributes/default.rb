#cookbooks/apache/attributes/default.rb

case node["platform_family"]
when "debian" # debian, ubuntu
	default["package_name"] = "apache2"
	default["service_name"] = "apache2"
	default["document_root"] = "/var/www"
when "rhel" # centos, redhat, amazon linux, scientific linux, ....
	default["package_name"] = "httpd"
	default["service_name"] = "httpd"
	default["document_root"] = "/var/www/html"
end	
