#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

%w[ php php-gd php-pdo php-mbstring php-mysqlnd].each do |pkg|
  package "#{pkg}" do
    action :install
    options "--enablerepo=remi,epel,remi-php55"
  end
end
