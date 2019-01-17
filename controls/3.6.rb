control "3.6" do
  title "Ensure 'general_log_file' Has Appropriate Permissions and Ownership (Scored)"
  desc  "MySQL can operate using a variety of log files, each used for different purposes. These are the binary log, error log, slow query log, relay log, audit log and general log. Because these are files on the host operating system, they are subject to the permissions and ownership structure provided by the host and may be accessible by users other than the MySQL user."
  impact 0.5
  tag "severity": "medium"
  tag "cis_id": "3.6"
  tag "cis_level": 1
  tag "Profile Applicability": "Level 1 - MySQL RDBMS on Linux"
  tag "audit text": "Perform the following steps to assess this recommendation:
  • Execute the following SQL statement to determine the Value of general_log_file
    show variables like 'general_log_file';
  • Execute the following command at a terminal prompt to list all general_log_file.* files
    ls <general_log_file>.*
  • For each file listed, execute the following command
    ls -l <general_log_file> | egrep '^-[r|w]{2}-[r|w]{2}----\s*.*$''
  Lack of output implies a finding"
  tag "fix": "Execute the following command for each log file location requiring corrected permissions and ownership:
      chmod 660 <log file>
      chown mysql:mysql <log file>"

  impact 0.0
  describe 'This control is not applicable on mysql within aws rds, as aws manages the operating system in which the mysql database is running on' do
    skip 'This control is not applicable on mysql within aws rds, as aws manages the operating system in which the mysql database is running on'
  end
end
