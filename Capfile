#!/usr/bin/env ruby

default_run_options[:pty] = true
set :ssh_options, { :forward_agent => true }

set :user, ENV['USER']
set :host, ENV['HOST']


desc <<-DESC
Takes a Ubuntu Precise host from nothing to Graylog2 in a single task.

This task does the following:

  * adds the puppetlabs apt repos
  * adds the aussielunix apt repos
  * installs puppet and git
  * clones this repos into /opt/build
  * runs puppet apply

Arguments:

  Required: (host to run remote command on)

    HOST="fqdn goes here"

  Optional: (defaults to calling username)

    USER='username to run remote commands as'

DESC
task :go, :hosts => host do
  abort "HOST is empty. run 'cap -e go' for usage info." if host.nil?
  run "echo 'deb http://ppa.lunix.com.au/ubuntu/ precise main' | #{sudo} tee /etc/apt/sources.list.d/aussielunix.list"
  run "echo 'deb http://apt.puppetlabs.com precise main' | #{sudo} tee /etc/apt/sources.list.d/puppetlabs.list"
  run "#{sudo} apt-key adv --keyserver keyserver.ubuntu.com --recv D77A4DCC"
  run "#{sudo} apt-key adv --keyserver keyserver.ubuntu.com --recv 4BD6EC30"
  run "#{sudo} apt-get update"
  run "#{sudo} apt-get install -y puppet git-core"
  run "#{sudo} mkdir /opt/build -m0755"
  run "#{sudo} chown #{user}:#{user} /opt/build"
  run "git clone https://github.com/aussielunix/graylog2-appliance.git /opt/build"
  run "#{sudo} puppet apply --verbose /opt/build/manifests/site.pp --modulepath=/opt/build/modules"
end

desc <<-DESC
DNAT rule to redirect port 80 to 3000

This applies a simple iptables REDIRECT to make Graylog2 available on port 80.

# sudo iptables -A PREROUTING -t nat -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 3000

DESC
task :dnat, :hosts => host do
  run "#{sudo} iptables -A PREROUTING -t nat -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 3000"
end
