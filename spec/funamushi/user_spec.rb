require 'spec_helper'

describe user('funamushi') do
  it { should have_uid 101 }
  it { should belong_to_group 'funamushi' }
  it { should have_authorized_key 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDHLGQsVtZEdZT4KnTPn0hdilci3lbisQccz7gSkK6VD5nDUh7Hy2/mj+YM8yo5sCfnJpPiujj7rB+qv7MNtTosO41UY+KHaMUPq3iyA5mBWzzxnTecdM7qXKXpYsfOUljCQWSg72WRH6QKu1XRiiZlalATOizQ2jbCFYhoXKl/OerP8ExKkRDXuB+fkpZW12rvuiKc3+VYMCmK+tvL3VruvIaY/BxVJe9i2Xqe4qpGEt29lngcwBBPeF7PZztzg2XT0SQ64NYgoRQkYmhtsnuTgTZ0k1UQxzhp+IPW/PA31DsnBjsaFbKkVRgfFY3kyh/VvFeWi9rzCU58mmeOCYG/ hadashi@mattaira2.local' }
end
