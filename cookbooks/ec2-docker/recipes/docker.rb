docker_service 'default' do
  action [:create, :start]
end

docker_image 'jenkins' do
  action :pull
end

docker_container 'jenkins server' do
  repo 'jenkins'
  port '8080:8080'
end
