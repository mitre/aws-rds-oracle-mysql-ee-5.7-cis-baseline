control "3.7" do
  title "Ensure SSL Key Files Have Appropriate Permissions and Ownership (Scored)"
  desc  "When configured to use SSL/TLS, MySQL relies on key files, which are stored on the host's filesystem. 
  These key files are subject to the host's permissions and ownership structure."
  impact 0.5
  tag "severity": "medium"
  tag "cis_id": "3.7"
  tag "cis_level": 1
  tag "Profile Applicability": "Level 1 - MySQL RDBMS on Linux"
  tag "audit text": "To assess this recommendation, locate the SSL key in use by executing the following SQL statement to get the Value of ssl_key:
  show variables where variable_name = 'ssl_key';
  Then, execute the following command to assess the permissions of the Value:
  ls -l <ssl_key Value> | egrep '^-r--------[ \t]*.[ \t]*mysql[ \t]*mysql.*$'
  Lack of output from the above command implies a finding."
  tag "fix": "Execute the following commands at a terminal prompt to remediate these settings using the Value from the audit procedure:
    chown mysql:mysql <ssl_key Value> 
    chmod 400 <ssl_key Value>"

  impact 0.0
  describe 'This control is not applicable on mysql within aws rds, as aws manages the operating system in which the mysql database is running on' do
    skip 'This control is not applicable on mysql within aws rds, as aws manages the operating system in which the mysql database is running on'
  end
end
 