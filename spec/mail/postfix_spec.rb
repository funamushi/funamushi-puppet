require 'spec_helper'

describe package('postfix') do
  it { should be_installed }
end

describe service('postfix') do
  it { should be_enabled }
  it { should be_running }
end

describe file('/etc/aliases') do
  it { should be_file }
  it { should contain('12: hadashi') }
end

describe mail_alias('12') do
  it { should be_aliased_to 'hadashi' }
end

describe mail_alias('info') do
  it { should be_aliased_to 'hadashi' }
end

describe user('kaimono') do
  it { should be_exists }
end

describe user('dev') do
  it { should be_exists }
end

describe port(25) do
  it { should be_listening }
end
