# Change to match your CPU core count
workers 2

# Min and Max threads per worker
threads 1, 6

app_dir = File.expand_path("../..", __FILE__)
directory app_dir
shared_dir = "#{app_dir}/tmp"

# Default to production
rails_env = ENV['RAILS_ENV'] || "production"
environment rails_env

# Set master PID and state locations
pidfile "#{shared_dir}/pids/puma.pid"
state_path "#{shared_dir}/pids/puma.state"

preload_app!

# Set up socket location
bind "unix://#{shared_dir}/sockets/puma.sock"

on_worker_boot do
  ActiveRecord::Base.establish_connection
end
