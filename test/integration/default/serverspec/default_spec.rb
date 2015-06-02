require 'spec_helper'

describe 'workstation::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  describe package('tree') do
    it { should be_installed }
  end

  describe package('nano') do
    it { should be_installed }
  end

  describe file('/etc/motd') do
    it { should contain 'Property' }
  end

  describe command('ls -la /') do
    its(:stdout) { should match /bin/ }
  end
end
