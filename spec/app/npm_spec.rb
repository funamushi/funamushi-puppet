require 'spec_helper'

describe file('/usr/local/bin/n') do
  it { should be_file }
  it { should be_mode 755 }
end

describe file('/usr/local/bin/node') do
  it { should be_file }
  it { should be_mode 755 }
end

describe file('/usr/local/bin/grunt') do
  it { should be_file }
  it { should be_mode 777 }
end

describe file('/usr/local/bin/bower') do
  it { should be_file }
  it { should be_mode 777 }
end
