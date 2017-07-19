server '13.112.107.115', user: 'app', roles: %w{app db web}
set :ssh_options, keys: '/Users/murai/.ssh/id_rsa_ec2'
