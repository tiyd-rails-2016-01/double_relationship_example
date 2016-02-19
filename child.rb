class Child < ActiveRecord::Base
  belongs_to :father, class_name: "Adult", foreign_key: "father_id"
  belongs_to :mother, class_name: "Adult", foreign_key: "mother_id"

  def parents
    [father, mother]
  end
end
