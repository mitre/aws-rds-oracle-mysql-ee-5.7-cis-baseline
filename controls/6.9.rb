control "6.9" do
  title "Ensure audit_log_policy is set to log logins and connections (Scored)"
  desc  "With the audit_log_policy setting the amount of information which is sent to the audit log is controlled. It must be set to log logins and connections."
  impact 0.5
  tag "severity": "medium" 
  tag "cis_id": "6.9"
  tag "cis_level": 2
  tag "Profile Applicability": "Level 2 - MySQL RDBMS"
  tag "audit text": "SHOW GLOBAL VARIABLES LIKE 'audit_log_policy';
  The result must be ALL."
  tag "fix": "Set audit_log_policy='ALL' in the MySQL configuration file and activate the setting by restarting the server or executing SET GLOBAL audit_log_policy='ALL';"
  tag "Default Value": "ALL"

 
  impact 0.0
  describe 'This control is not applicable on mysql in aws rds, as this setting does not exist' do
    skip 'This control is not applicable on mysql in aws rds, as this setting does not exist'
  end
end