require 'spec_helper'
describe 'add_keys_to_consul_with_puppet' do
  context 'with default values for all parameters' do
    it { should contain_class('add_keys_to_consul_with_puppet') }
  end
end
