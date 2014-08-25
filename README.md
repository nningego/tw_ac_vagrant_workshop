#  Vagrant Puppet Workshop
## Steps to setup
### 1) download and install vagrant
### 2) vagrant plugin install vagrant-librarian-puppet
### 3) start vagrant
````
$vagrant up
$vagrant ssh
$cd /vagrant/app
$bundle install
$rake dbcreate
$rake spec
$ruby run_app.rb
````

### 3) local machine
open browser to http://localhost:4567