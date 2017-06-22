class AuloAttendeesRelationship < ActiveRecord::Base
  belongs_to :aulo
  belongs_to :attendee
end
