workers Integer(ENV['WEB_CONCURRENCY'] || 2)
threads_count = Integer(ENV['RAILS_MAX_THREADS'] || 5)
threads threads_count, threads_count

# Default to production
environment ENV['RAILS_ENV'] || "production"

# Set master PID and state locations
app_dir = File.expand_path("../..", __FILE__)
directory app_dir
tmp_dir = "#{app_dir}/tmp"
pidfile "#{tmp_dir}/pids/puma.pid"
state_path "#{tmp_dir}/pids/puma.state"

preload_app!

# Set up socket location
bind "unix://#{tmp_dir}/sockets/puma.sock"

on_worker_boot do
  ActiveRecord::Base.establish_connection
end
