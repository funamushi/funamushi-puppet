class user {
  group { 'funamushi':
    gid => 101,
  }

  user { 'funamushi':
    uid        => 101,
    gid        => 101,
    managehome => true,
    require    => Group['funamushi'],
    password   => '$1$44uro0NN$XaZIIQTfza1bkkAsKiT4A/',
  }

  file {
    '/home/funamushi/.ssh':
      ensure  => directory,
      owner   => 'funamushi',
      group   => 'funamushi',
      mode    => 700,
      require => User['funamushi'];
      
    '/home/funamushi/.ssh/authorized_keys':
      source  => "puppet:///modules/user/home/funamushi/.ssh/authorized_keys",
      owner   => "funamushi",
      group   => "funamushi",
      mode    => 600,
      require => File["/home/funamushi/.ssh"];

    '/home/funamushi/.ssh/id_rsa':
      source  => "puppet:///modules/user/home/funamushi/.ssh/id_rsa",
      owner   => "funamushi",
      group   => "funamushi",
      mode    => 600,
      require => File["/home/funamushi/.ssh/"];

    '/home/funamushi/.ssh/id_rsa.pub':
      source  => "puppet:///modules/user/home/funamushi/.ssh/id_rsa.pub",
      owner   => "funamushi",
      group   => "funamushi",
      mode    => 644,
      require => File["/home/funamushi/.ssh/"];
  }
}
