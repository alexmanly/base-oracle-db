require 'chef/resource/lwrp_base'

class Chef
  class Resource
    class Flyway < Chef::Resource::LWRPBase
      provides :flyway

      self.resource_name = :flyway
      actions :run, :install
      default_action :run

      attribute :location, :name_attribute => true, :kind_of => String
      attribute :url, :name_attribute => false, :kind_of => String
      attribute :user, :name_attribute => false, :kind_of => String
      attribute :password, :name_attribute => false, :kind_of => String
      attribute :install_dir, :name_attribute => false, :kind_of => String
      attribute :flyway_version, :name_attribute => false, :kind_of => String
      attribute :flyway_url, :name_attribute => false, :kind_of => String
      attribute :owner, :name_attribute => false, :kind_of => String
      attribute :group, :name_attribute => false, :kind_of => String
      attribute :sensitive, :name_attribute => false, :kind_of => [TrueClass, FalseClass]
    end
  end
end