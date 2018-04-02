require 'spec_helper'

describe 'moritzheiber/duplicity' do
  set :os, family: :alpine
  set :backend, :docker
  set :docker_image, 'moritzheiber/duplicity'
  set :docker_container_create_options, 'Entrypoint' => ['sh']

  describe file('/root/.cache/duplicity') do
    it { should exist }
    it { should be_directory }
  end

  describe file('/usr/bin/duplicity') do
    it { should exist }
    it { should be_file }
    it { should be_mode 755 }
  end

  describe file('/usr/lib/python2.7/site-packages/paramiko/__init__.py') do
    it { should exist }
    it { should be_file }
    its(:size) { should > 0 }
  end
end
