# == Schema Information
#
# Table name: calendar_entries
#
#  id             :integer          not null, primary key
#  type           :string(255)
#  family_id      :integer
#  start_datetime :datetime
#  end_datetime   :datetime
#  name           :string(255)
#  desription     :text
#  image_url      :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

class Appointment < CalendarEntry

end
