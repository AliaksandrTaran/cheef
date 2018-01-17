hostname = node['hostanme']
file '/etc/motd' do
	content "Hostname is this: #{hostname}"
end
