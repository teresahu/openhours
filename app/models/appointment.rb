class Appointment < ActiveRecord::Base
  belongs_to :owner, :class_name => "User"
  belongs_to :reserved_user, :class_name => "User"
end
