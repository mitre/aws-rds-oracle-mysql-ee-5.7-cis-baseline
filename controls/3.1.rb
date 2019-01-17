control "3.1" do
  title "Ensure 'datadir' Has Appropriate Permissions and Ownership (Scored)"
  desc  "The data directory is the location of the MySQL databases."
  impact 0.5
  tag "severity": "medium"
  tag "cis_id": "3.1"
  tag "cis_level": 1
  tag "Profile Applicability": "Level 1 - MySQL RDBMS on Linux"
  tag "audit text": "Perform the following steps to assess this recommendation:
  • Execute the following SQL statement to determine the Value of datadir
      show variables where variable_name = 'datadir';
  • Execute the following command at a terminal prompt
    ls -l <datadir>/.. | egrep '^d[r|w|x]{3}------\s*.\s*mysql\s*mysql\s*\d*.*mysql'
  Lack of output implies a finding.
  "
  tag "fix": "Execute the following commands at a terminal prompt:
      chmod 700 <datadir>
      chown mysql:mysql <datadir>"

  impact 0.0
  describe 'This control is not applicable on mysql within aws rds, as aws manages the operating system in which the mysql database is running on' do
    skip 'This control is not applicable on mysql within aws rds, as aws manages the operating system in which the mysql database is running on'
  end
end