# == Schema Information
#
# Table name: addresses
#
#  id                   :integer          not null, primary key
#  person_id            :integer
#  name                 :string(255)
#  address1             :string(255)
#  address2             :string(255)
#  address3             :string(255)
#  city                 :string(255)
#  state                :string(255)
#  postal_code          :string(255)
#  country              :string(255)
#  created_at           :datetime
#  updated_at           :datetime
#  quickbooks_vendor_id :integer
#
# Indexes
#
#  index_addresses_on_person_id  (person_id)
#

class Address < ActiveRecord::Base

  belongs_to :person
  has_many :cash_outs

  attr_accessible :name, :address1, :address2, :address3, :city, :state, :postal_code, :country

  validates :name, presence: true
  validates :address1, presence: true
  validates :city, presence: true
  validates :postal_code, presence: true
  validates :country, presence: true

end
