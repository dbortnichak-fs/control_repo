class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDT4Eb+BIv/2OdMdqotEoE0sFrNrPtlYRbbiOeqQ5ZE2V2AoYFh213yiU7GPvMCGYSMn4Ab03u3yXbHaHwgpeGVBuAeZfHzbo3nnT8qo+5x7HX7v3NWoSzfwIIJhLHdbTpwM4ajrc2M0vjPTK05vLeW1nbhXPrC2pqLp/TUyBjZOkFZMkBSy0Ay8R/40qfCm16z0wFB7N3b0/MEfeydLEbC8IGjQ/VizlqLZc0uv3S1xUmh93Eyr0VMrambRe59ycMyUUHRe66qUOZdwwS0+uk7MZ2YQ03rftZuI3fVtUzxe1654orFENBLpE/7Ezn1Im2jZVE3r/LHl5TYfue9dj+T',
  }  
}
