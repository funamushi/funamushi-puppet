require 'spec_helper'

describe port(21631) do
  it { should be_listening }
end
