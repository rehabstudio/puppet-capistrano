# Self-instantiating simple class that creates the core capistrano configuration used as part of the quick-deploy process
class capistrano {

    package { 'capistrano':
        ensure   => '2.15.5',
        provider => 'gem',
    }

    package { 'capistrano-ext':
        ensure   => '1.2.1',
        provider => 'gem',
    }

    package { 'app-deployer':
        ensure   => '0.0.3',
        provider => 'gem',
    }

    file { ['/vagrant/config/',
            '/vagrant/config/deploy/']:
        owner  => 'vagrant', 
        group  => 'vagrant',
        ensure => directory,
    }

    file { 'Creating capistrano Capfile':
        name   => '/vagrant/Capfile',
        mode   => 0640,
        owner  => 'vagrant', 
        group  => 'vagrant',
        source => 'puppet:///modules/capistrano/Capfile',
        ensure => present,
    }

    file { 'Creating capistrano dev config':
        name   => '/vagrant/config/deploy/dev',
        mode   => 0640,
        owner  => 'vagrant', 
        group  => 'vagrant',
        source => 'puppet:///modules/capistrano/dev',
        ensure => present,
    }

    file { 'Creating capistrano staging config':
        name   => '/vagrant/config/deploy/staging',
        mode   => 0640,
        owner  => 'vagrant', 
        group  => 'vagrant',
        source => 'puppet:///modules/capistrano/dev',
        ensure => present,
    }
}

class { 'capistrano':
    
}
