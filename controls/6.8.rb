control "6.8" do
  title "Ensure audit_log_policy is set to log logins (Scored)"
  desc  "With the audit_log_policy setting the amount of information which is sent to the audit log is controlled. It must be set to log logins."
  impact 0.5
  tag "severity": "medium" 
  tag "cis_id": "6.8"
  tag "cis_level": 1
  tag "Profile Applicability": "Level 1 - MySQL RDBMS"
  tag "audit text": "SHOW GLOBAL VARIABLES LIKE 'audit_log_policy';
  The result must be LOGINS or ALL."
  tag "fix": "Set audit_log_policy='ALL' or audit_log_policy='LOGINS' in the MySQL configuration file and activate the setting by restarting the server or executing
   SET GLOBAL audit_log_policy='ALL'; or SET GLOBAL audit_log_policy='LOGINS';"
  tag "Default Value": "ALL"

  
  impact 0.0
  describe 'This control is not applicable on mysql in aws rds, as this setting does not exist' do
    skip 'This control is not applicable on mysql in aws rds, as this setting does not exist'
  end
end