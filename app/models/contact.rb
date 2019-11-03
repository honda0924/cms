class Contact < ApplicationRecord
  belongs_to :client,optional: true
  belongs_to :action_cat,optional: true
end
