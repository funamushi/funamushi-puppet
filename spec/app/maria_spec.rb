require 'spec_helper'

describe yumrepo('maria') do
  it { should be_enabled }
end

describe package('MariaDB-client') do
  it { should be_installed }
end
