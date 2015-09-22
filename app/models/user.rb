class User < ActiveRecord::Base
  has_many :owned_appointments, :class_name => "Appointment", :foreign_key => "owner_id"
  has_many :reserved_appointments, :class_name => "Appointment", :foreign_key => "reserved_user_id"
  before_save { self.email = email.downcase }
  before_save { self.last_name.length == 1 ? self.last_name = self.last_name + "." : self.last_name = self.last_name }
  validates :first_name, presence: true, length: { minimum: 2, maximum: 20 }
  validates :last_name, presence: true, length: { minimum: 1, maximum: 20 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 105 }, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL_REGEX }
  validates :location, presence: true
  mount_uploader :picture, PictureUploader
  validate :picture_size
  default_scope -> { order(updated_at: :desc) }

  def available_appointments
    self.owned_appointments.where("reserved_user_id is NULL")
  end

  private
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end

    # def set_default_pic
    #   unless self.picture?
    #     self.picture = User.
    #   end
    # end
end
