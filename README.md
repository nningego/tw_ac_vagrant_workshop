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
$rspec spec
$ruby lib/run_app.rb

#go to functional tests
$rspec spec

````

### 3) local machine
run db tests
run functional tests
open browser to http://localhost:4567
