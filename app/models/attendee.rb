class Attendee < ActiveRecord::Base
    validates :login, :phone_number, presence: true
    has_many :aulo_attendees_relationships
    has_many :aulos, :through  => :aulo_attendees_relationships
end
