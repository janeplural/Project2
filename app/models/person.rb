class Person < ActiveRecord::Base


		belongs_to :family

		has_many :participations
			has_many :calendar_entries, through: :participations
				has_many :appointments, through: :participations
				has_many :childcares, through: :participations
				has_many :happenings, through: :participations





end





# class Child < Person
# 	belongs_to :member, :polymorphic => true
# end



# class Caregiver < Person
# 	belongs_to :member, :polymorphic => true
# end



# class User < CareGiver
# 	belongs_to :member, :polymorphic => true
# end