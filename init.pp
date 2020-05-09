Before the change

class profile {
        file { '/etc/profile.d/append-path.sh':
                owner   => 'root',
                group   => 'root',
                mode    => '0646',
                content => "PATH=/java/bin\n",
        }
}

After the change

class profile {
        file { '/etc/profile.d/append-path.sh':
                owner   => 'root',
                group   => 'root',
                mode    => '0644',
                content => "PATH=\$PATH:/java/bin\n",
        }
}
