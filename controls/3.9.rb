control "3.9" do
  title "Ensure 'audit_log_file' has Appropriate Permissions and Ownership (Scored)"
  desc  "MySQL can operate using a variety of log files, each used for different purposes. These are the binary log, error log, slow query log, relay log, audit log and general log. 
  Because these are files on the host operating system, they are subject to the permissions and ownership structure provided by the host and may be accessible by users other than the MySQL user"
  impact 0.5 
  tag "severity": "medium" 
  tag "cis_id": "3.9"
  tag "cis_level": 1
  tag "Profile Applicability": "Level 1 - MySQL RDBMS on Linux"
  tag "audit text": "To assess this recommendation, execute the following SQL statement to discover the audit_log_file value:
    show global variables where variable_name='audit_log_file';
  NOTE: If you see the audit file name but no path, the default path will be the path assigned to the datadir variable.
  Then, execute the following command at a terminal prompt (using the discovered audit_log_file value):
    ls -l <audit_log_file> | egrep '^-rw[-x]rw[-x][-r][-w][-x][ \t]*[0-9][ \t]*mysql[ \t]*mysql.*$'"
  tag "fix": "Execute the following commands for the audit_log_file discovered in the audit procedure:
    chmod 660 <audit_log_file>
    chown mysql:mysql <audit_log_file>"

  impact 0.0
  describe 'This control is not applicable on mysql within aws rds, as aws manages the operating system in which the mysql database is running on' do
    skip 'This control is not applicable on mysql within aws rds, as aws manages the operating system in which the mysql database is running on'
  end
end
 