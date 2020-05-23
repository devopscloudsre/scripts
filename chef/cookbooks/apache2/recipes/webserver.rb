#Version 1.2
#
package 'httpd'

#service 'httpd' do
#  action :start
#end

file '/var/www/html/chef.html' do
  content 'Welcome to Chef'
end

template '/var/www/html/index.html' do
  source  'index.html.erb'
end

template '/etc/httpd/conf/httpd.conf' do
  source 'httpd.conf.erb'
end

service 'httpd' do
  action :restart
end

