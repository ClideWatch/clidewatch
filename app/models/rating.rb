class Rating < ActiveRecord::Base
  belongs_to :clide

  attr_accessible :clide_id  , :community , :debugging , :features    , :ip       ,
                  :lag       , :native    , :overall   , :performance , :pricing  ,
                  :stability , :support   , :web

  validates_presence_of :clide_id
end
