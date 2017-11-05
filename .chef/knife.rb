# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "sandeep_test"
client_key               "#{current_dir}/sandeep_test.pem"
chef_server_url          "https://api.chef.io/organizations/sandeep_test_21"
cookbook_path            ["#{current_dir}/../cookbooks"]
#knife[:editor] = "C:\\Program Files\\Sublime Text 3\\sublime_text -nosession -multiInst"
knife[:editor] = 		  "notepad"

