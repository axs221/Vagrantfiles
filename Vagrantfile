VAGRANTFILE_API_VERSION = '2'
Vagrant.require_version '>= 1.5.0'

def create_vm(name, config)
  config.vm.define name do |new_machine|
    new_machine.vm.provision :chef_solo do |chef|

      chef.run_list = [
        'recipe[install::git]',
        'recipe[install::dotfiles]',
        'recipe[install::docker]'
      ]

    end
  end
end

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.hostname = 'saxsom-dev'
  config.vm.box = 'ubuntu/trusty64'
  if Vagrant.has_plugin?("vagrant-omnibus")
    config.omnibus.chef_version = 'latest'
  end
  config.berkshelf.enabled = true

  create_vm "dev1", config

end
