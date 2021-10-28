class Budget < ApplicationRecord
    
    include Visible
    has_many :works, dependent: :destroy

    validates :cliente, presence: true
    validates :vehiculo, presence: true

end
