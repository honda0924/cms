class Action < ApplicationRecord
  belongs_to :client
  belongs_to :action_cat
end
