control "1.5" do
  title "Disable Interactive Login (Scored)"
  desc  "When created, the MySQL user may have interactive access to the operating system, which means that the MySQL user could login to the host as any other user would"
  impact 0.5
  tag "severity": "medium"
  tag "cis_id": "1.5"
  tag "cis_level": 2
  tag "Profile Applicability": "Level 2 - MySQL RDBMS on Linux"
  tag "audit text": "Execute the following command to assess this recommendation
  getent passwd mysql | egrep '^.*[\/bin\/false|\/sbin\/nologin]$''
  Lack of output implies a finding"
  tag "fix": "Perform the following steps to remediate this setting:
  • Execute one of the following commands in a terminal
  usermod -s /bin/false 
  usermod -s /sbin/nologin"

  impact 0.0
  describe 'This control is not applicable on mysql within aws rds, as aws manages the operating system in which the mysql database is running on' do
    skip 'This control is not applicable on mysql within aws rds, as aws manages the operating system in which the mysql database is running on'
  end
end
