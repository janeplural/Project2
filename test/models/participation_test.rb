# == Schema Information
#
# Table name: participations
#
#  id                          :integer          not null, primary key
#  person_id                   :integer
#  calendar_entry_id           :integer
#  name_DNU_just_for_debugging :string(255)
#  created_at                  :datetime
#  updated_at                  :datetime
#

require 'test_helper'

class ParticipationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
