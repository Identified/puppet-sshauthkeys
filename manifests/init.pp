define sshauthkeys ($ssh_keys, $ssh_users) {
        $keys2=regsubst($ssh_users,"\$","-$name")
        sshauthkeys::helper { $keys2: ssh_keys => $ssh_keys, user => $name }
}
