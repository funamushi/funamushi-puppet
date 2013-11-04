require 'spec_helper.rb'

describe port('22') do
  it { should be_listening }
end

describe file('/etc/ssh/sshd_config') do
  it { should be_file }
  its(:content) { match /Port 22/ }
  its(:content) { match /PermitRootLogin no/ }
  its(:content) { match /PasswordAuthentication no/ }
end
