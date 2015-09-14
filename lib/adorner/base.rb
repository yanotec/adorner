module Adorner
  class Base
    attr_accessor :resource

    def initialize(resource)
      self.resource = resource
    end

    def resource_class
      @resource_class ||= resource.class
    end

    def resource_name
      "#{resource_class}".demodulize.tableize.singularize
    end

    delegate :to_s, :to => :resource, :allow_nil => true

    protected(:resource=)
  end
end
