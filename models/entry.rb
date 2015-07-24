class Entry < ActiveRecord::Base
    has_many :comments, dependent: :destroy
    belongs_to :author
end
