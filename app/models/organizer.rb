class Organizer < ActiveRecord::Base
    validates :login, :phone_number, presence: true
    has_many :aulos
end
