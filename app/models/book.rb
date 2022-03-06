# == Schema Information
#
# Table name: books
#
#  id          :bigint           not null, primary key
#  author      :string           not null
#  category    :string           not null
#  year        :integer          not null
#  owner       :boolean          default(TRUE), not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Book < ApplicationRecord
    validates :author, :category, :year, :owner, :description, presence: true
end
