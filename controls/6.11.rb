control "6.11" do
  title "Set audit_log_strategy to SYNCHRONOUS or SEMISYNCRONOUS (Scored)"
  desc  "The audit_log_strategy must be set to SYNCHRONOUS or SEMISYNCHRONOUS"
  impact 0.5 
  tag "severity": "medium"
  tag "cis_id": "6.11"
  tag "cis_level": 2
  tag "Profile Applicability": "Level 2 - MySQL RDBMS"
  tag "audit text": "To assess this recommendation, execute the following SQL statement:
    SHOW GLOBAL VARIABLES LIKE 'audit_log_strategy';
  The result should be SYNCHRONOUS or SEMISYNCHRONOUS"
  tag "fix": "To remediate this configuration:
  1. Open the MySQL configuration file (my.cnf)
  2. Navigate to the mysqld section of the configuration file
  3. Set audit_log_strategy='SEMISYNCHRONOUS' (or SYNCHRONOUS)
  "
  tag "Default Value": "ASYNCHRONOUS"

  impact 0.0
  describe 'This control is not applicable on mysql in aws rds, as this setting does not exist' do
    skip 'This control is not applicable on mysql in aws rds, as this setting does not exist'
  end
end
