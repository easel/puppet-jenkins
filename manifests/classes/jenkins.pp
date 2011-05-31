class jenkins {
  include yum::repo::jenkins
  package { "jenkins":
    ensure => "present",
    require => Yum::Managed_repo['jenkins']
  }
  service { "jenkins":
    ensure => "running",
    require => Package["jenkins"]
  }
}
