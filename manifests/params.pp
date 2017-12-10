class ssh::params {
  case $facts['os']['family'] {
    'RedHat': {
      $package_name='openssh'
      $service_name='sshd'
    }
    default: {
      fail(" is not supported")
    }
  }
}
