Puppet Capistrano Submodule
===========================

This repo is a submodule for vagrant that installs the relevant gems to allow capistrano to run and creates some template files to give a slight head start.

### Configure

Once the vagrant up process is complete the following files will be created:

    - vagrant/Capfile
    - vagrant/config/deploy/dev
    - vagrant/config/deploy/staging
    
The settings for these files are set in the class parameters.

### Run deploy

Now that you have configured the settings in the deploy files you can run the deploy process by executing the following commands:

    - vagrant ssh
    - cd /vagrant
    - cap dev deploy:setup
    - cap dev deploy:check
    - cap dev deploy
    
Replace `dev` with applicable environment.

### Gems installed

    - capistrano v2.15.5
    - capistrano-ext v1.2.1
    - app-deployer v0.0.3

