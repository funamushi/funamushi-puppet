require 'spec_helper'

describe yumrepo('maria') do
  it { should be_enabled }
end

describe package('MariaDB-server') do
  it { should be_installed }
end

describe package('MariaDB-client') do
  it { should be_installed }
end

describe service('mysql') do
  it { should be_enabled }
  it { should be_running }
end

describe port(3306) do
  it { should be_listening }
end
