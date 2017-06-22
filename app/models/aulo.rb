class Aulo < ActiveRecord::Base
    validates :label, presence: true 
    belongs_to :organizer
    has_many :aulo_attendees_relationships
    has_many :attendees, :through  => :aulo_attendees_relationships
end
