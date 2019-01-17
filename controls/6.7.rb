control "6.7" do
  title "Ensure audit_log_include_accounts is set to NULL (Scored)"
  desc  "The audit_log_include_accounts variable enables the administrator to set accounts for which events should be logged in the audit log."
  impact 0.5
  tag "severity": "medium"  
  tag "cis_id": "6.7"
  tag "cis_level": 1
  tag "Profile Applicability": "Level 1 - MySQL RDBMS"
  tag "audit text": "To assess this recommendation, execute the following SQL statement:
    SHOW VARIABLES LIKE '%audit_log_include_accounts%';
  Ensure the resulting value is NULL."
  tag "fix": "To remediate this configuration setting, execute the following SQL statement
    SET GLOBAL audit_log_include_accounts = NULL
  Or set audit_log_include_accounts=NULL in my.cnf."
  tag "Default Value": "audit_log_include_accounts is set to NULL by default."

  
  impact 0.0
  describe 'This control is not applicable on mysql in aws rds, as this setting does not exist' do
    skip 'This control is not applicable on mysql in aws rds, as this setting does not exist'
  end
end