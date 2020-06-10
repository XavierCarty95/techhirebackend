class User < ApplicationRecord
    has_many :applications 
    has_many :jobs , through: :applications
    validates :email, uniqueness: {case_sensitive: false}
    has_secure_password
end
# handleApplication = () => {
#     const user = {
#         job_id: this.props.job.id ,
#         user_id: this.props.user.id,
#         name: this.props.job.company.website

#     } 
#     this.props.handleApplication(user)
    
# }