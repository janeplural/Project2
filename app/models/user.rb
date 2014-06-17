# == Schema Information
#
# Table name: persons
#
#  id                     :integer          not null, primary key
#  type                   :string(255)
#  family_id              :string(255)
#  nickname               :string(255)
#  first_name             :string(255)
#  last_name              :string(255)
#  description            :text
#  headshot_type          :string(255)
#  facebook_username      :string(255)
#  uploaded_headshot_url  :string(255)
#  notes_on_availability  :text
#  created_at             :datetime
#  updated_at             :datetime
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#
# Indexes
#
#  index_persons_on_email                 (email) UNIQUE
#  index_persons_on_reset_password_token  (reset_password_token) UNIQUE
#

class User < Caregiver
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
		:recoverable, :rememberable, :trackable, :validatable

	before_save do |person|
		family = Family.create()
		self.family_id = family.id
	end
end
