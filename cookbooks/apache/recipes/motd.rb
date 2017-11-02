hostname = node['hostname']

file '/etc/motd' do
	content " Hostname is thi : #{hostname}"
  action :create
end
