#
# Cookbook Name:: ec2-docker
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

search("users", "*:*").each do |user_data|
  user user_data["id"] do
    comment user_data["comment"]
    uid user_data["uid"]
    gid user_data["gid"]
    home user_data["home"]
    shell user_data["shell"]
  end
end

search("groups", "*:*").each do |group_data|
  user group_data["id"] do
    comment group_data["comment"]
    uid group_data["uid"]
    gid group_data["gid"]
    home group_data["home"]
    shell group_data["shell"]
  end
end
