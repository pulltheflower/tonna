class Post < ApplicationRecord

  def created_at_human
    created_at.strftime("%Y.%m.%d")
  end
end
