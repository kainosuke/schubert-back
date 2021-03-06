# == Schema Information
#
# Table name: teams
#
#  id              :uuid             not null, primary key
#  name            :string           not null
#  password_digest :string           not null
#  mail            :string
#  url             :string
#  description     :text
#  is_published    :boolean          default(FALSE)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Team < ApplicationRecord
  # SecurePassword有効
  has_secure_password

  has_many :recruits
  has_many :team_types
  has_many :types, :through => :team_types
  has_many :team_regions
  has_many :regions, :through => :team_regions

  has_many :concerts

  scope :is_public, -> {
    where(is_public: true)
  }
end
