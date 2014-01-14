name             'docker-completion'
maintainer       'Hideki IGARASHI'
maintainer_email 'hideki.develop@gmail.com'
license          'All rights reserved'
description      'Installs and configures docker-completion'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe 'docker-completion', 'Installs and configures docker-completion'

supports 'ubuntu'
