def my_cookbook(name, version = '>= 0.0.0', options = {})
  cookbook name, version, { path: "#{name}" }.merge(options)
end

source "https://supermarket.chef.io"

cookbook 'docker', '~> 1.0.26'
cookbook 'git', '~> 4.3.4'
my_cookbook 'install'
