control "2.2" do
  title " Do Not Specify Passwords in Command Line (Not Scored)"
  desc  "When a command is executed on the command line, for example mysql -u admin - p password, the password may be visible in the user's shell/command history or in the process list"
  impact 0.5
  tag "severity": "medium" 
  tag "cis_id": "2.2"
  tag "cis_level": 1
  tag "Profile Applicability": "Level 1 - MySQL RDBMS on Linux"
  tag "audit text": "Check the process or task list if the password is visible.
  Check the shell or command history if the password is visible"
  tag "fix": "Use -p without password and then enter the password when prompted, use a properly secured .my.cnf file, or store authentication information in encrypted format in .mylogin.cnf"

  
  impact 0.0
  describe 'This control is not applicable on mysql within aws rds, as aws manages the operating system in which the mysql database is running on' do
    skip 'This control is not applicable on mysql within aws rds, as aws manages the operating system in which the mysql database is running on'
  end
end