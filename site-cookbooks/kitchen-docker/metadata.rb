name             'kitchen-docker'
maintainer       'Hideki IGARASHI'
maintainer_email 'hideki.develop@gmail.com'
license          'All rights reserved'
description      'Installs and configures kitchen-docker'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe 'kitchen-docker', 'Installs and configures kitchen-docker'

supports 'ubuntu'

depends 'rbenv'
