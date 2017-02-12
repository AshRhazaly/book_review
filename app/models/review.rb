class Review < ApplicationRecord
  has_and_belong_to :books
end
