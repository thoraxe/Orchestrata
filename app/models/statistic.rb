class Statistic < ActiveRecord::Base
  attr_accessible :value, :application_id, :name
  belongs_to :application
end
