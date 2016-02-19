class Adult < ActiveRecord::Base
  has_many :children_as_father, class_name: "Child", foreign_key: "father_id"
  has_many :children_as_mother, class_name: "Child", foreign_key: "mother_id"

  def children
    (children_as_father + children_as_mother).uniq
  end
end
