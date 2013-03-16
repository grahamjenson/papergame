class Identifier < ActiveRecord::Base
  attr_accessible :display, :identifier_id, :issuer, :type_token, :value
end
