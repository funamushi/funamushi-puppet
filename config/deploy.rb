set :application, 'funamushi-puppet'
set :repository,  '.'
set :deploy_to,   "/tmp/#{application}"
set :deploy_via,  :copy

set :user, 'root'
set :use_sudo, false
set :ssh_options, port: 21631

role :app, '219.94.235.57'

namespace :puppet do
  namespace :apply do
    roles.each do |role_name, role|
      desc "pupet apply to #{role_name} servers"
      task role_name, roles => role_name do
        deploy.update

        run "puppet apply --modulepath=#{current_path}/modules:#{current_path}/roles #{current_path}/manifests/#{role_name}.pp"
      end
    end
  end
end
