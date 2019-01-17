control "4.5" do
  title "Ensure 'mysqld' Is Not Started with '--skip-grant-tables' (Scored)"
  desc  "This option causes mysqld to start without using the privilege system."
  impact 0.5
  tag "severity": "medium" 
  tag "cis_id": "4.5"
  tag "cis_level": 1
  tag "Profile Applicability": "Level 1 - MySQL RDBMS"
  tag "audit text": "Perform the following to determine if the recommended state is in place:
  • Open the MySQL configuration (e.g. my.cnf) file and search for skip-grant-tables
  • Ensure skip-grant-tables is set to FALSE"
  tag "fix": "Perform the following to establish the recommended state:
  • Open the MySQL configuration (e.g. my.cnf) file and set: 
    skip-grant-tables = FALSE"

  impact 0.0
  describe 'This control is not applicable on mysql on aws rds, this setting the value of this setting cannot be verified as we do not have access to the mysql configuration file' do
    skip 'This control is not applicable on mysql on aws rds, this setting the value of this setting cannot be verified as we do not have access to the mysql configuration file'
  end
end
