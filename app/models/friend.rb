# encoding: utf-8

class Friend < ActiveRecord::Base
  validates :name, presence: true
  validates :latitude, presence: true,
                       uniqueness: {
                          scope: :longitude,
                          message: "Essa localização já está sendo usada"}
  validates :longitude, presence: true
end
