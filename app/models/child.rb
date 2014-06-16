# == Schema Information
#
# Table name: persons
#
#  id                    :integer          not null, primary key
#  type                  :string(255)
#  family_id             :string(255)
#  nickname              :string(255)
#  first_name            :string(255)
#  last_name             :string(255)
#  description           :text
#  headshot_type         :string(255)
#  facebook_username     :string(255)
#  uploaded_headshot_url :string(255)
#  notes_on_availability :text
#  created_at            :datetime
#  updated_at            :datetime
#



class Child < Person
end
