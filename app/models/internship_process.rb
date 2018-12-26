# == Schema Information
#
# Table name: internship_processes
#
#  id                           :integer          not null, primary key
#  student_id                   :integer
#  user_id                      :integer
#  organizations_id             :integer          not null
#  internship_process_type_id   :integer          not null
#  internship_responsible       :string(255)
#  phone1                       :string(45)
#  phone2                       :string(45)
#  email_internship_responsible :string(45)
#  accept_terms                 :integer
#  approved hours               :integer
#  status                       :integer          default(0)
#  created_at                   :datetime
#  updated_at                   :datetime
#

class InternshipProcess < ApplicationRecord
  belongs_to :internship_process_type
  belongs_to :organization

  has_many :internship_process_histories
  has_many :internship_documents
end
