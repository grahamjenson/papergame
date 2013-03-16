class AwardTemplate < ActiveRecord::Base
  attr_accessible :award_id, :description, :image, :title
end
