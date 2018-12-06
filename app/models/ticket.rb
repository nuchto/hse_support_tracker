class Ticket < ApplicationRecord
  belongs_to :reporter, class_name: "User", foreign_key: :reporter_id
  # belongs_to :assigner, class_name: "User", foreign_key: :assigner_id
  # belongs_to :assignee, class_name: "User", foreign_key: :assignee_id
end
