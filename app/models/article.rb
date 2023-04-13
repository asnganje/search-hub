class Article < ApplicationRecord
    def self.search(search)
      if search
        where("title LIKE ?", "%#{search}%")
      else
        all
      end
    end
  end
  