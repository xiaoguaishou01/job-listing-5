# config valid only for current version of Capistrano
lock "3.8.1"

set :application, "job5"
set :repo_url, "git@github.com:xiaoguaishou01/job-listing-5.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp
set :deploy_to, '/home/apps/job5'
# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"
set :branch, 'step8-mogai-2'
# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')
# Default value for :pty is false
# set :pty, true
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle')

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }
set :passenger_restart_with_touch, true
# Default value for keep_releases is 5
# set :keep_releases, 5
