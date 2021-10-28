class Work < ApplicationRecord
  include Visible 

  belongs_to :budget
end
