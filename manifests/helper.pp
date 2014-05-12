define sshauthkeys::helper ($ssh_keys, $user,$ensure='present') {
        $name2=regsubst($name,"-${user}\$","")
        ssh_authorized_key { "puppet: ${name2} ${user}":
          ensure => $ensure,
          type => $ssh_keys["${name2}"]["type"],
          key => $ssh_keys["${name2}"]["key"],
          user => "${user}"
        }
}

