require 'spec_helper'

describe package('kapacitor') do
  it { should be_installed }
end

%w(
  /etc/kapacitor/kapacitor.conf
  /etc/logrotate.d/kapacitor
  /etc/default/kapacitor
).each do |f|
  describe file(f) do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_mode 644 }
  end
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
