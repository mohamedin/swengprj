class Application < ActiveRecord::Base
    belongs_to :applicant
    belongs_to :job_oppertunity
end
