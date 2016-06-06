require 'spec_helper'

describe package('kapacitor') do
  it { should be_installed }
end

describe file('/etc/kapacitor/kapacitor.conf') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_mode 664 }
end

describe file('/etc/default/kapacitor') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_mode 644 }
end

describe file('/var/lib/kapacitor') do
  it { should be_directory }
  it { should be_owned_by 'kapacitor' }
  it { should be_mode 755 }
end

describe file('/var/log/kapacitor') do
  it { should be_directory }
  it { should be_owned_by 'kapacitor' }
  it { should be_mode 755 }
end

describe service('kapacitor') do
  it { should be_running }
end
