remote_file '/opt/docker-install.sh' do
  source 'https://s3-us-west-2.amazonaws.com/dheeraj44/docker-install.sh'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
execute 'run script' do
  command 'sh /opt/docker-install.sh'
end

execute 'mkdir' do
  cwd '/etc/systemd/system'
  command 'mkdir docker.service.d'
 end

execute 'touch' do
  cwd '/etc/systemd/system/docker.service.d/'
  command 'touch docker.conf'
end

file '/etc/systemd/system/docker.service.d/docker.conf' do
  content '[Service]
   ExecStart=
   ExecStart=/usr/bin/dockerd -H tcp://172.31.68.24:2376'
end

