class Company < ActiveResource::Base
  alias :read_attribute_for_serialization :send
  
  self.site = 'http://localhost:3010'

  def active_model_serializer
    CompanySerializer
  end
end
