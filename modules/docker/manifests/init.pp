class docker {
$command = "/usr/bin/curl -fsSL https://download.docker.com/linux/ubuntu/gpg | /usr/bin/apt-key add - ; /usr/bin/add-apt-repository 'deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable' ; /usr/bin/apt-get update -q -y"

$pacotes = ["apt-transport-https","ca-certificates","curl","software-properties.common"]

package{$pacotes:
	ensure => present,
	}

exec{'rodando comando':
	command => $command,
    }

package{"docker-ce":
	ensure => present,
	}

}
