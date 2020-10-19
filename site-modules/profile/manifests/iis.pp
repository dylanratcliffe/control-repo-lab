class profile::iis {

# install IIS feature
  dsc_windowsfeature {'IIS':
    ensure => 'present',
    dsc_name => 'Web-Server',
  }
  dsc_windowsfeature {'IIS-tools':
    ensure => 'present',
    dsc_name => 'Web-Mgmt-Tools',
  }
    dsc_windowsfeature {'IIS-tools-scripts':
    ensure => 'present',
    dsc_name => 'Web-Scripting-Tools',
  }
# remove default website
  iis_site {'Default Web Site':
    ensure  => absent,
    require => Iis_feature['Web-WebServer'],
  }

}
