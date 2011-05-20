class Link < ActiveRecord::Base
  belongs_to :difficulty
  belongs_to :topic
end
